package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import reservation.ReservationDTO;
import util.st_DatabaseUtil;

@SuppressWarnings("unused")
public class st_UserDAO {
	private ResultSet rs; // 결과값 받아오기
	Connection conn = st_DatabaseUtil.getConnection();
	
	public int join(String userID, String userPassword, String name, String email, String number) {
		String SQL = "INSERT INTO userjoin VALUES (?,?,?,?,?)";
		try {
// 각각의 데이터를 실제로 넣어준다. 
			PreparedStatement pstmt = conn.prepareStatement(SQL);
// 쿼리문의 ?안에 각각의 데이터를 넣어준다. 
			pstmt.setString(1, userID);
			pstmt.setString(2, userPassword);
			pstmt.setString(3, name);
			pstmt.setString(4, email);
			pstmt.setString(5, number);
// 명령어를 수행한 결과 반환, 반환값: insert가 된 데이터의 개수 
			return pstmt.executeUpdate();
		} 
		catch (Exception e) 
		{
			System.out.println("BBBBBBBBBBBB");
			e.printStackTrace();
		}
		return -1;
	}
	
	public int insert_reservation(String name, String tel, int number, String storeName, String reservationDate) {
		String sql = "INSERT INTO reservation VALUES(1,?,?,?,?,?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, tel);
			pstmt.setInt(3,number);
			pstmt.setString(4, storeName);
			pstmt.setString(5,reservationDate);
			
			return pstmt.executeUpdate();
		}
		catch(Exception e) 
		{
			e.printStackTrace();
		}
		return -1;
	}
		
	public int login(String userID, String userPassword) {
		String sql = "select userPassword from userjoin where userID = ?";
		try {
			 // 결과값 받아오기
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt = conn.prepareStatement(sql); // sql쿼리문을 대기 시킨다
			pstmt.setString(1, userID); // 첫번째 '?'에 매개변수로 받아온 'userID'를 대입
			rs = pstmt.executeQuery(); // 쿼리를 실행한 결과를 rs에 저장
			if (rs.next()) {
				if (rs.getString(1).equals(userPassword)) {
					return 1; // 로그인 성공
				} else
					return 0; // 비밀번호 틀림
			}
			return -1; // 아이디 없음
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; // 오류
	}
}