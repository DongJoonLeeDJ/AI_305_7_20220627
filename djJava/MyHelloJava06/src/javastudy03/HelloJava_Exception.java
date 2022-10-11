package javastudy03;

import java.util.Scanner;

public class HelloJava_Exception {

	public static void main(String[] args) {

		//입력한 문자열을 숫자로 바꾸는 두 가지 방식이 있다.
		Scanner s = new Scanner(System.in);
		//1. nextInt를 활용
		System.out.println("숫자 입력해");
		int num = s.nextInt();
		//그러나! 이렇게 입력할 경우 다음에 nextLine 입력이 안 됨
		
		String name = s.nextLine();
		System.out.println("num="+num+", name="+name);
		
		//2. Integer.parseInt 활용
		//중간에 nextLine을 적을 필요가 없음
		try {
			System.out.println("다시 숫자 입력");
			int age = Integer.parseInt(s.nextLine());
			System.out.println("문자열 입력");
			String alias = s.nextLine();
			System.out.println("age="+age+", alias="+alias);
			
			System.out.println("문자열을 숫자로 변환");
			age = Integer.parseInt(""); //이 부분에서 에러가 남!
		} catch (Exception e) {
			System.out.println("age값이 잘못되었습니다.");
			e.printStackTrace(); //오류 출력
			//오류는 출력하되, 밑에 있는 코드는 실행한다.
			//왜냐면 종료된 게 아니고, 오류만 보여준다. 코드는 계속 실행함
		}
		
		System.out.println("끝"); //이 부분을 실행하지 않음.
	}

}









