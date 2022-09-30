package my.hello.javastudy02;

import java.util.ArrayList;
import java.util.Scanner;

public class JavaStudy04_ListArray2 {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		System.out.println("몇 명 관리할까요?");
		int count = s.nextInt();

		s.nextLine(); //위에서 적은 s.nextInt때문
		Tourist[] tourists_arr = new Tourist[count];
		for(int i = 0; i<count; i++)
		{
			System.out.println("이름?");
			String name = s.nextLine();
			System.out.println("나이?");
			int age = s.nextInt();
			System.out.println("번호?");
			int beonho = s.nextInt();
			s.nextLine(); //Int 뒤 Line이라서
			System.out.println("주민번호?");
			String sNum = s.nextLine();
			
			tourists_arr[i] = 
					new Tourist(name,age,beonho,sNum);
		}
		for (Tourist t : tourists_arr) {
			System.out.println(t.getName());
			System.out.println(t.getAge());
			System.out.println(t.getBeonho());
			System.out.println(t.getsNum());
		}
		
		ArrayList<Tourist> tourist_list 
			= new ArrayList<Tourist>();
		for(int i = 0; i<count; i++) {
			System.out.println("이름?");
			String name = s.nextLine();
			System.out.println("나이?");
			int age = s.nextInt();
			System.out.println("번호?");
			int beonho = s.nextInt();
			s.nextLine(); //Int 뒤 Line이라서
			System.out.println("주민번호?");
			String sNum = s.nextLine();
			tourist_list.add(new Tourist(name,age,beonho,sNum));
		}
		for (Tourist t : tourist_list) {
			System.out.println(t.getName());
			System.out.println(t.getAge());
			System.out.println(t.getBeonho());
			System.out.println(t.getsNum());
		}
		
		

	}

}
