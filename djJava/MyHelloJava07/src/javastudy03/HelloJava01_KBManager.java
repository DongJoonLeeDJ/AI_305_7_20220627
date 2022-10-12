package javastudy03;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Scanner;

public class HelloJava01_KBManager {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner s = new Scanner(System.in);
		int count = 0;
		System.out.println("�� �� �Է��ұ��?");
		try {
			count = Integer.parseInt(s.nextLine());
			if(count<=0)
				throw new Exception("���̰� 0 ������ �� ����");
		} catch (Exception e) {
			System.out.println("���� �Է� �߸���,"+e.getMessage());
			return;
		} finally {
			//���α׷��� ����ǵ� ������ ������ ��
			if(count<=0)
				System.out.println("���α׷��� ��������ּ���.");
		}
		
		List<KBStudent> students 
		= new ArrayList<KBStudent>();
		
		for(int i = 0; i<count; i++) {
			String name="";
			String gender="";
			int age=0;
			int number=0;
			System.out.println("�̸���?");
			name = s.nextLine();
			System.out.println("������?");
			gender = s.nextLine();
			try {
				System.out.println("����?");
				age = Integer.parseInt(s.nextLine());
				System.out.println("��ȣ?");
				number = Integer.parseInt(s.nextLine());
				if(age<=0)
				{
					System.out.println("���� ���� �߸��Ǿ����ϴ�.");
					age=0;
				}
			} catch (Exception e) {
				e.printStackTrace(); //��������� �ϰ� ���α׷��� ��� ��
			}
			KBStudent k = new KBStudent(name, gender, age, number);
			if(students.contains(k)) {
				System.out.println("�ߺ�!");
				i--;
				continue;
			}
			students.add(k);
		}
		for (KBStudent kbStudent : students) {
			System.out.println(kbStudent);
		}
		
		Collections.sort(students);
		
		System.out.println("---���̼� ���(��������)---");
		for (KBStudent kbStudent : students) {
			System.out.println(kbStudent.toString());
		}
		
		//��ȣ�� ����
		Collections.sort(students, new Comparator<KBStudent>() {

			@Override
			public int compare(KBStudent o1, KBStudent o2) {
				// TODO Auto-generated method stub
				return o1.getNumber()-o2.getNumber();
			}
			
		});
		System.out.println("---�������� ���(��ȣ��)---");
		for (KBStudent kbStudent : students) {
			System.out.println(kbStudent.toString());
		}
	}

}









