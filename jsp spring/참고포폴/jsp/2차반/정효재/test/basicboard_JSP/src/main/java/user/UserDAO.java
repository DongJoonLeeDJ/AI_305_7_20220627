package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.DBUtil;

//Data Access Object

public class UserDAO {
	Connection conn = DBUtil.getConnection();

	public int join(String userID, String userPassword,String name,String tel,String email,String birth,String reg_date) {
		String SQL = "insert into member(id,mpasswd,name,tel,birth,reg_date) values (?,?,?,?,?,?)";
		String temp = "insert into member(id,mpasswd,name,tel,email,birth,reg_date) values ('" + userID +
				"','"+userPassword+"','"+name+"','"+tel+"','"+email+"','"+birth+"','"+reg_date+"')";
		try {
// 각각의 데이터를 실제로 넣어준다. 
			PreparedStatement pstmt = conn.prepareStatement(temp);
// 쿼리문의 ?안에 각각의 데이터를 넣어준다. 
//			pstmt.setString(1, userID);
//			pstmt.setString(2, userPassword);
//			pstmt.setString(3, name);
//			pstmt.setString(4, tel);
//			pstmt.setString(5, birth);
//			pstmt.setString(6, reg_date);
// 명령어를 수행한 결과 반환, 반환값: insert가 된 데이터의 개수 
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	public int setRank(String userID,String rank) { // 등급 설정.
		String SQL = "UPDATE member SET rank=? WHERE id=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, rank);
			pstmt.setString(2, userID);
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	public String getRank(String id) { //등급 받아오기.
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String rank=null;
		String SQL = "select rank from member where id=?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				 rank = rs.getString(1);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return rank;
	}
	public int idCheck(String id) { // 아이디 중복 체크
		PreparedStatement pstmt = null;
		int x = -1;
		ResultSet rs = null;
		String temp = "select count(*) from member where id=?";
		try {
			pstmt = conn.prepareStatement(temp);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				x = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return x;
	}
	public int userCheck(String id, String passwd)  //아이디.비번 일치한지.
			throws Exception {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String dbpasswd = "";
	int x = -1;
	
	try{
		conn = DBUtil.getConnection();
	    String temp = "select mpasswd from member where id = '"+id+"'";
		pstmt = conn.prepareStatement(temp);
		//pstmt.setString(1, id);
		rs= pstmt.executeQuery();

		if(rs.next()){
			dbpasswd= rs.getString("mpasswd"); 
			if(dbpasswd.equals(passwd))
				x = 1; //인증 성공
			else
				x = 0; //비밀번호 틀림
		}else
			x = -1;//해당 아이디 없음
					
	}catch(Exception ex) {
		ex.printStackTrace();
	}finally{
		if (rs != null) 
			try { rs.close(); } catch(SQLException ex) {}
		if (pstmt != null) 
			try { pstmt.close(); } catch(SQLException ex) {}
		if (conn != null) 
			try { conn.close(); } catch(SQLException ex) {}
	}
	return x;
}
	public UserDTO getUserInfo(String userID) {
		UserDTO userDTO = new UserDTO();
		Connection conn = DBUtil.getConnection();
		String SQL = "select * from member where id = ?";
		PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
			pstmt = conn.prepareStatement(SQL);
        	pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				userDTO.setUserID(rs.getString("id"));
				userDTO.setUserPassword(rs.getString("mpasswd"));				
				userDTO.setName(rs.getString("name"));
				userDTO.setTel(rs.getString("tel"));
				userDTO.setEmail(rs.getString("email"));
				userDTO.setBirth(rs.getString("birth"));
				userDTO.setReg_date(rs.getString("reg_date"));
				userDTO.setRank(rs.getString("rank"));
				userDTO.setLoggin_count(rs.getInt("loggin_count"));
				userDTO.setPost_count(rs.getInt("post_count"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return userDTO;
	}
}

//출처: https://icandooit.tistory.com/104 [i can do "IT"]