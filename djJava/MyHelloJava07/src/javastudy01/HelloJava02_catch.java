package javastudy01;

import java.util.Scanner;

public class HelloJava02_catch {

	public static void main(String[] args) {
		// catch 여러 개 달릴 수 있음
		//단 맨 아래에는 Exception이 달려야 함
		//혹은 Exception 하고, 그 밑에 Throwable 추가해야 함
		
		int a=0,b=0,c=0;
		
		//try catch를 거는 데, 숫자를 잘못입력한 경우
		//잘못된 연산을 할 경우 2가지에 대해서 해보기
		Scanner s = new Scanner(System.in);
		try {
			a=10;
			System.out.println("b는?");
			b = Integer.parseInt(s.nextLine());
			c = a/b;
		} catch(NumberFormatException e) {
			System.out.println("오류 원인 (포맷)" + e.getMessage());
		} catch(ArithmeticException e) {
			System.out.println("오류 원인 (연산)" + e.getMessage());
		} catch (Exception e) {
			System.out.println("뭔가 잘못됨");
			e.printStackTrace();
		}
		System.out.println("과연 c 값은? " + c);
		

	}

}





