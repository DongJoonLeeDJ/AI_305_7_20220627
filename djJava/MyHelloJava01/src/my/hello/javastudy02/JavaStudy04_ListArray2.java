package my.hello.javastudy02;

import java.util.ArrayList;
import java.util.Scanner;

public class JavaStudy04_ListArray2 {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		System.out.println("�� �� �����ұ��?");
		int count = s.nextInt();

		s.nextLine(); //������ ���� s.nextInt����
		Tourist[] tourists_arr = new Tourist[count];
		for(int i = 0; i<count; i++)
		{
			System.out.println("�̸�?");
			String name = s.nextLine();
			System.out.println("����?");
			int age = s.nextInt();
			System.out.println("��ȣ?");
			int beonho = s.nextInt();
			s.nextLine(); //Int �� Line�̶�
			System.out.println("�ֹι�ȣ?");
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
			System.out.println("�̸�?");
			String name = s.nextLine();
			System.out.println("����?");
			int age = s.nextInt();
			System.out.println("��ȣ?");
			int beonho = s.nextInt();
			s.nextLine(); //Int �� Line�̶�
			System.out.println("�ֹι�ȣ?");
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
