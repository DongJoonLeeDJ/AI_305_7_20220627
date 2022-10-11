package javastudy03;

import java.util.Scanner;

public class HelloJava02_inputNum {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner s = new Scanner(System.in);
		System.out.println("첫번째?");
		String num1 = s.nextLine();
		System.out.println("두번째?");
		String num2 = s.nextLine();
		int n1 = 0;
		int n2 = 0;
		try { //입력된 값들을 숫자로 변환할 것
			n1 = Integer.parseInt(num1);
			n2 = Integer.parseInt(num2);
		} catch (Exception e) {
			System.out.println("잘못된 값 들어감");
			n1=0;
		}
		if(n1!=0) {
			System.out.println(n1 * (n2%10));
			System.out.println(n1 * ((n2/10)%10));
			System.out.println(n1 * (n2/100));
			System.out.println(n1 * n2);
		}
		System.out.println("프로그램을 종료합니다. 감사합니다.");
	}

}






