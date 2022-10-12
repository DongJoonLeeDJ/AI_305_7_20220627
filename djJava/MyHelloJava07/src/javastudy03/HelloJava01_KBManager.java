package javastudy03;

import java.util.Scanner;

public class HelloJava01_KBManager {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner s = new Scanner(System.in);
		System.out.println("몇 명 입력할까요?");
		try {
			int count = Integer.parseInt(s.nextLine());
			if(count<=0)
				throw new Exception("길이가 0 이하일 수 없다");
		} catch (Exception e) {
			System.out.println("숫자 입력 잘못됨,"+e.getMessage());
			return;
		} finally {
			//프로그램이 종료되도 무조건 실행을 함
			System.out.println("프로그램을 재시작해주세요.");
		}
	}

}









