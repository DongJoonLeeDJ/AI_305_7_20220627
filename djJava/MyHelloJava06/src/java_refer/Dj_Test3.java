package java_refer;

import java.util.Scanner;

public class Dj_Test3 {

	public static void main(String[] args) {
		
		// TODO Auto-generated method stub
		Scanner s = new Scanner(System.in);
		
		String num1 = s.nextLine();
		String num2 = s.nextLine();
		int n1 = 0;
		int n2_1 = 0;
		int n2_2 = 0;
		int n2_3 = 0;
		int n2 = 0;
		try {
			n1 = Integer.parseInt(num1);
			n2 = Integer.parseInt(num2);
			n2_1 = num2.charAt(2)-'0';
			n2_2 = num2.charAt(1)-'0';
			n2_3 = num2.charAt(0)-'0';
			
		} catch (Exception e) {
			System.out.println("¿¡·¯!");
			e.printStackTrace();
			n1 = 0;
		}
		System.out.println(n1*n2_1);
		System.out.println(n1*n2_2);
		System.out.println(n1*n2_3);
		System.out.println(n1*n2);
		
		
		
	}

}
