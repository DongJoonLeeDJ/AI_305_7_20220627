package com.javalec.ex;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class MemberDao {

	
	//싱글톤
	//스프링에서 많이 쓰임
	//객체를(=인스턴스를) 한 번만 만들어서 그걸 계속 쓰겠다.
	
	//어차피 crud 하는 건 DAO 객체 1개로 충분함
	//굳이 여러 개 만들 필요 없음
	private static MemberDao instance;
	
	public static MemberDao getInstance() {
		if(instance==null)
			instance = new MemberDao();
		return instance;
	}
	
	public final int MEMBER_NONEXISTENT = 0;
	public final int MEMBER_EXISTENT = 1;
	
	public final int MEMBER_JOIN_FAIL = 0;
	public final int MEMBER_JOIN_SUCCESS = 1;
	
	public final int MEMBER_LOGIN_PW_NO_GOOD = 0;
	
	public final int MEMBER_LOGIN_SUCCESS = 1;
	public final int MEMBER_LOGIN_IS_NOT = -1;
	
	public final String TABLE = " mymember ";
	
	
	//java.util import
	public ArrayList<MemberDto> allMembers()
	{
		ArrayList<MemberDto> dtos = new ArrayList<MemberDto>();
		Connection connection = null;
		PreparedStatement pstmt = null; //import java.sql
		ResultSet set = null;
		String query = "select * from mymember";
		try {
			connection = getConnection();
			pstmt = connection.prepareStatement(query);
			set = pstmt.executeQuery();
			while(set.next()) { //table에서 1줄씩 읽고 컬럼별 값들을 dto에 넣고, dtos에 추가. 
				String name = set.getString("name");
				String id = set.getString("id");
				String pw = set.getString("pw");
				String eMail = set.getString("eMail");
				String address = set.getString("address");
				MemberDto dto = new MemberDto();
				dto.setId(id);
				dto.setName(name);
				dto.setPw(pw);
				dto.seteMail(eMail);
				dto.setAddress(address);
				
				dtos.add(dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(set!=null)
					set.close();
				if(pstmt!=null)
					pstmt.close();
				if(connection!=null)
					connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		
		return dtos;
	}
	
	//insert문 호출해서 db에 값 추가
	public int insertMember(MemberDto dto) {
		int ri = MEMBER_JOIN_FAIL;
		Connection connection = null;
		PreparedStatement pstmt = null; //import java.sql
		String query = "insert into "+ TABLE +" values (?,?,?,?,?,?)";
		try {

			connection = getConnection();
			System.out.println("connection " + connection.toString());
			pstmt = connection.prepareStatement(query);
			
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPw());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.geteMail());
			pstmt.setTimestamp(5,dto.getrDate());
			pstmt.setString(6, dto.getAddress());
			
			pstmt.executeUpdate();
			ri=MEMBER_JOIN_SUCCESS;
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt!=null)
					pstmt.close();
				if(connection!=null)
					connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return ri;//가입실패시 0을 리턴
	}
	//id체크
	public int confirmId(String id) {
		int ri = MEMBER_NONEXISTENT;
		
		Connection connection = null;
		PreparedStatement pstmt = null;
		ResultSet set = null; //import java.sql
		String query = "select id from "+TABLE+" where id=?";
		try {
			connection = getConnection();
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, id);
			set = pstmt.executeQuery();
			//set.next() executeQuery의 결과를 한 줄 읽는 거.
			if(set.next()) //해당 id 존재할 경우
				ri = MEMBER_EXISTENT;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(set!=null)
					set.close();
				if(pstmt!=null)
					pstmt.close();
				if(connection!=null)
					connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return ri;
	}
	//pw체크
	public int userCheck(String id, String pw) {
		int ri=MEMBER_LOGIN_PW_NO_GOOD;
		String dbPw;
		
		Connection connection = null;
		PreparedStatement pstmt = null;
		ResultSet set = null;
		String query = "select pw from "+TABLE+" where id=?";
		try {
			connection = getConnection();
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, id);
			set = pstmt.executeQuery();
			
			if(set.next())
			{
				dbPw = set.getString("pw"); //db에서 읽어온 pw를 dbPW에 대입
				if(dbPw.equals(pw)) //db에서 읽어온 pw랑 내가 입력한 pw 비교
					ri=MEMBER_LOGIN_SUCCESS;
				else
					ri=MEMBER_LOGIN_PW_NO_GOOD;
			} else { //해당 id로 pw자체가 조회 안 됨(존재하지 않는 아이디)
				ri = MEMBER_LOGIN_IS_NOT; //회원아님
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(set!=null)
					set.close();
				if(pstmt!=null)
					pstmt.close();
				if(connection!=null)
					connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		
		return ri;
	}
	//멤버값 가져옴
	public MemberDto getMember(String id) {
		MemberDto dto = null;
		Connection connection = null;
		PreparedStatement pstmt = null;
		ResultSet set = null;
		String query = "select * from "+TABLE+" where id=?";
		try {
			connection = getConnection();
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1,id);
			set = pstmt.executeQuery();
			if(set.next()) {
				dto = new MemberDto();
				dto.setId(set.getString("id"));
				dto.setPw(set.getString("pw"));
				dto.setName(set.getString("name"));
				dto.seteMail(set.getString("eMail"));
				dto.setrDate(set.getTimestamp("rDate"));
				dto.setAddress(set.getString("address"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(set!=null)
					set.close();
				if(pstmt!=null)
					pstmt.close();
				if(connection!=null)
					connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		
		return dto;
	}
	//멤버 수정
	public int updateMember(MemberDto dto) {
		int ri = 0;
		Connection connection = null;
		PreparedStatement pstmt = null;
		//String query = "update "+TABLE+" set pw=?, eMail=?, address=? where id =?";
		String query = "update " + TABLE+ " set pw=?, name=?, eMail=?, address=? where id=?";
		try {
			connection = getConnection();
			pstmt = connection.prepareStatement(query);
//			pstmt.setString(1,dto.getPw());
//			pstmt.setString(2,dto.geteMail());
//			pstmt.setString(3,dto.getAddress());
//			pstmt.setString(4,dto.getId());
			pstmt.setString(1, dto.getPw());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.geteMail());
			pstmt.setString(4, dto.getAddress());
			pstmt.setString(5, dto.getId());
			
			ri = pstmt.executeUpdate(); //쿼리를 전송하고 그 결과를 받아옴 0이면 실패. 1이면 성공.
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt!=null)
					pstmt.close();
				if(connection!=null)
					connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return ri;
	}
	
	//import java.sql
	public Connection getConnection() {
		//java.naming
		Context context = null;
		//javax.sql
		DataSource dataSource = null;
		Connection connection = null;
		try {
			context = new InitialContext();
			dataSource = (DataSource)context.lookup("java:comp/env/jdbc/mysql");

			connection = dataSource.getConnection();
		} catch (Exception e) {
			// TODO: handle exception
			

			System.out.println("step e");
			e.printStackTrace();
		} 
		
		
//		finally {
//			try {
//				if(context!=null)
//					context.close();
////				if(dataSource != null)
////					dataSource = null;
//				if(connection!=null)
//					connection.close();
//			} catch (Exception e2) {
//				// TODO: handle exception
//				System.out.println("step e2");
//				e2.printStackTrace();
//			}
//		}
		
		return connection;
		
	}
	
}

















