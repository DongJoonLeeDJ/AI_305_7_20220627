package javastudy03;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class HelloJava05_useThrow {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		
		Student s1 = new Student();
		try {
			System.out.println("�л� ���̴�?");
			int age = Integer.parseInt(s.nextLine());
			s1.setAge(age);
			System.out.println("�л���?");
			s1.setName(s.nextLine());
		} catch (Exception e) {
			System.out.println("�߸��� ��");
			//age���� int�̰�, int���� �⺻������ 0�̴�.
			//(int������ �������ڸ��� 0�̴�.)
			s1.setName("��������л�1");
		}
		
		Student s2 = new Student();
		try {
			System.out.println("�л� ���̴�?");
			int age = Integer.parseInt(s.nextLine());
			s2.setAge(age);
			System.out.println("�л���?");
			s2.setName(s.nextLine());
		} catch (Exception e) {
			System.out.println("�߸��� ��");
			//age���� int�̰�, int���� �⺻������ 0�̴�.
			//(int������ �������ڸ��� 0�̴�.)
			s2.setName("��������л�2");
		}
		
		
		Student s3 = new Student();
		try {
			System.out.println("�л� ���̴�?");
			int age = Integer.parseInt(s.nextLine());
			s3.setAge(age);
			System.out.println("�л���?");
			s3.setName(s.nextLine());
		} catch(NumberFormatException e) {
			System.out.println("���� ���� ���� ����");
			e.printStackTrace();
		}
		catch(ArithmeticException e)
		{
			System.out.println("������ ����");
			e.printStackTrace();
		} catch(Exception e) {
			System.out.println("����");
			e.printStackTrace();
		} catch(Throwable e) {
			System.out.println("���� ū ������ ���� ����");
			e.printStackTrace();
		}
		List<Student> students = new ArrayList<Student>();
		students.add(s1);
		students.add(s2);
		students.add(s3);
		
		for (Student student : students) {
			System.out.println(student.getName());
			System.out.println(student.getAge());
			System.out.println(student);//Student Ŭ���� ����
			//String���� ��ȯ�� �� �ȴ�... 
			//ObjectŬ������ toString �޼ҵ带 ��� ��...
		}
	}

}






