package javastudy03;

import java.util.Scanner;

public class HelloJava01_KBManager {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner s = new Scanner(System.in);
		int count = 0;
		System.out.println("몇 명 입력할까요?");
		try {
			count = Integer.parseInt(s.nextLine());
			if(count<=0)
				throw new Exception("길이가 0 이하일 수 없다");
		} catch (Exception e) {
			System.out.println("숫자 입력 잘못됨,"+e.getMessage());
			return;
		} finally {
			//프로그램이 종료되도 무조건 실행을 함
			System.out.println("프로그램을 재시작해주세요.");
		}
		
		for(int i = 0; i<count; i++) {
			String name="";
			String gender="";
			int age=0;
			int number=0;
			System.out.println("이름은?");
			name = s.nextLine();
			System.out.println("성별은?");
			gender = s.nextLine();
			try {
				System.out.println("나이?");
				age = Integer.parseInt(s.nextLine());
				System.out.println("번호?");
				number = Integer.parseInt(s.nextLine());
				if(age<=0)
				{
					System.out.println("나이 값이 잘못되었습니다.");
					age=0;
				}
			} catch (Exception e) {
				e.printStackTrace(); //오류출력은 하고 프로그램은 계속 됨
			}
			KBStudent k = new KBStudent(name, gender, age, number);
			
			
		}
	}

}









