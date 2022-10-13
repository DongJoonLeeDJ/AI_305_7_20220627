package util;

import java.sql.Connection;
import java.sql.DriverManager;

//디비연결
public class st_DatabaseUtil {
	public static Connection getConnection() {
		// 데이터베이스와 연결상태 관리
		try {
			//String dbURL = "jdbc:mysql://localhost:3306/TUTORIAL?useSSL=false&serverTimezone=UTC";
			String dbURL = "jdbc:mysql://192.168.0.27:3306/hack_db?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC";

			String dbID = "HackUser";
			String dbPassword = "1234"; //1234
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			System.out.println("AAAAAAAAAAA");
			e.printStackTrace();
		}
		return null;
	}
}