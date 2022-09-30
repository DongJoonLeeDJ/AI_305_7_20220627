package my.hello.javastudy02;

import java.util.ArrayList;
import java.util.Scanner;

public class JavaStudy03_List_Array {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		System.out.println("몇 명 관리할까요?");
		int count = s.nextInt();
		Student[] students_arr = new Student[count];
		for(int i = 0; i<count; i++)
		{
			s.nextLine(); //위에서 적은 s.nextInt때문
			System.out.println("이름?");
			String name = s.nextLine();
			System.out.println("나이?");
			int age = s.nextInt();
			System.out.println("점수?");
			double score = s.nextDouble();
			students_arr[i] = 
					new Student(name,age,score);
		}
		for (Student ss : students_arr) {
			System.out.println(ss.getName());
			System.out.println(ss.getAge());
			System.out.println(ss.getScore());
		}
		
		ArrayList<Student> stu_list 
			= new ArrayList<Student>();
		for(int i = 0; i<count; i++) {
			s.nextLine(); //위에서 적은 s.nextInt때문
			System.out.println("이름?");
			String name = s.nextLine();
			System.out.println("나이?");
			int age = s.nextInt();
			System.out.println("점수?");
			double score = s.nextDouble();
			stu_list.add(new Student(name,age,score));
		}
		for (Student ss : stu_list) {
			System.out.println(ss.getName());
			System.out.println(ss.getAge());
			System.out.println(ss.getScore());
		}
		
		

	}

}



