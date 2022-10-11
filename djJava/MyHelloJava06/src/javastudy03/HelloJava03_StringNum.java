package javastudy03;

import java.util.Scanner;

public class HelloJava03_StringNum {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner s = new Scanner(System.in);
		
		System.out.println("첫번째 숫자?");
		String num1 = s.nextLine();
		System.out.println("두번째 숫자?");
		String num2 = s.nextLine();
		
		//toCharArray랑 배열연산자 쓰는 경우
		//CharAt을 쓰는 경우가 있다.
		//그리고 아스키코드이기 때문에 글자 '0'을 빼서 숫자를 구하거나
		//Character.getNumericValue('1') 이걸 쓰기도 함
		
		int n1 = 0;
		int n2 = 0;
		try {
			n1 = Integer.parseInt(num1);
			n2 = Integer.parseInt(num2);
			System.out.println(n1* (num2.charAt(2)-'0'));
			System.out.println(n1* (num2.charAt(1)-'0'));
			System.out.println(n1* (num2.charAt(0)-'0'));
			System.out.println(n1*n2);
		} catch (Exception e) {
			n1 = 0;
			System.out.println("숫자 오류!");
			e.printStackTrace();//오류메시지 찍고싶을 때
		}
		System.out.println("프로그램 끝!");
		
	}

}








