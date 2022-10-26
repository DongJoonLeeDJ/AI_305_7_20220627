package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import util.st_DatabaseUtil;


public class st_mailDAO {
	Connection conn = st_DatabaseUtil.getConnection();
	
	public int sendmail(String name, String email, String phone, String message) {
		String SQL = "INSERT INTO sendmail VALUES (?,?,?,?)";
		try {
// 각각의 데이터를 실제로 넣어준다. 
			PreparedStatement pstmt = conn.prepareStatement(SQL);
// 쿼리문의 ?안에 각각의 데이터를 넣어준다. 
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			pstmt.setString(3, phone);
			pstmt.setString(4, message);
			
// 명령어를 수행한 결과 반환, 반환값: insert가 된 데이터의 개수 
			return pstmt.executeUpdate();
		} 
		catch (Exception e) 
		{
			System.out.println("DDDDDDDDD");
			e.printStackTrace();
		}
		return -1;
	}

}
