package my.hello.javastudy02;

import java.util.ArrayList;

public class JavaStudy02_List_class {

	public static void main(String[] args) {
		//�迭, List ��� ���ڸ� �����ϰų�
		//���ڿ��� �����ϴ� �� ����
		//��ü�� �����ϴ� �͵� �ȴ�.
		Student[] students = new Student[3];
		students[0] = new Student();
		students[1] = new Student("�̵���",34,1);
		Student s = new Student("����ȣ",29,2);
		students[2] = s;
		
		//int�� double������ ���� ������ ������ �ٸ���.
		//1. newŰ���� + �����ڰ� �־������ ��ü ������
		//2. ������ �ȿ� ��쿡 ���� �Ű������� ���⵵ ��
		
		ArrayList<Student> mystudents
		= new ArrayList<Student>();
		
		mystudents.add(new Student("������",30,5));
		mystudents.add(new Student());
		Student ss = new Student("������",25,4);
		mystudents.add(ss);
		
		//new Ű���� + ������ 
		//�ν��Ͻ�(Instance)��� �θ�!!!
		//Instance : ����
		//Student�� Instance = Student�� ����
		//= �л��̶�� �߻��� ������ ��ü���� ���÷� ������ ��
		
		int ex; //ex�� �⺻������ ���� 0�� ��
		//s0�� s1�� �ƹ��͵� ����Ű�� ����
		//�� null���̴�.
		Student s0;
		Student s1 = null;
		mystudents.add(s1);
		students[0] =s1;
		
		
	}

}



