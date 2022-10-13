package Handlers;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

	import model.MemberDTO;
	import java.sql.Connection;
	
	
	public class MemberDAO {
		Connection conn = DatabaseUtil.getConnection();
	
		public int join(String nick, String id, String password) {
			String SQL = "INSERT INTO JSPMEMBER VALUES (?,?,?)";
			try {
	// 각각의 데이터를 실제로 넣어준다. 
				PreparedStatement pstmt = conn.prepareStatement(SQL);
	// 쿼리문의 ?안에 각각의 데이터를 넣어준다. 
			pstmt.setString(1, nick);
			pstmt.setString(2, id);
			pstmt.setString(3, password);
// 명령어를 수행한 결과 반환, 반환값: insert가 된 데이터의 개수 
			return pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("BBBBBBBBBBBB");
			e.printStackTrace();
		}
		return -1;
	}
	
	public int idCheck(String id) { //1이면 중복. 0이면 중복X. -1이면 중복체크 에러.
		PreparedStatement pstmt = null;
		int x = -1;
		ResultSet rs = null;
		String temp = "select count(*) from jspmember where id=?";
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
	
	public int nickCheck(String nick) { //1이면 중복. 0이면 중복X. -1이면 중복체크 에러.
		PreparedStatement pstmt = null;
		int x = -1;
		ResultSet rs = null;
		String temp = "select count(*) from jspmember where nick=?";
		try {
			pstmt = conn.prepareStatement(temp);
			pstmt.setString(1, nick);
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
	
	public int userCheck(String id, String password) { //1이면 중복. 0이면 중복X. -1이면 중복체크 에러.
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String temp = "select password from jspmember where id=?";
		try {
			pstmt = conn.prepareStatement(temp);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(password))
					return 1;
				else 
					return 0;
			}
			return -1;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -2;
	}
}
