package javastudy03;

import java.util.Scanner;

public class HelloJava_Exception {

	public static void main(String[] args) {

		//�Է��� ���ڿ��� ���ڷ� �ٲٴ� �� ���� ����� �ִ�.
		Scanner s = new Scanner(System.in);
		//1. nextInt�� Ȱ��
		System.out.println("���� �Է���");
		int num = s.nextInt();
		//�׷���! �̷��� �Է��� ��� ������ nextLine �Է��� �� ��
		
		String name = s.nextLine();
		System.out.println("num="+num+", name="+name);
		
		//2. Integer.parseInt Ȱ��
		//�߰��� nextLine�� ���� �ʿ䰡 ����
		try {
			System.out.println("�ٽ� ���� �Է�");
			int age = Integer.parseInt(s.nextLine());
			System.out.println("���ڿ� �Է�");
			String alias = s.nextLine();
			System.out.println("age="+age+", alias="+alias);
			
			System.out.println("���ڿ��� ���ڷ� ��ȯ");
			age = Integer.parseInt(""); //�� �κп��� ������ ��!
		} catch (Exception e) {
			System.out.println("age���� �߸��Ǿ����ϴ�.");
			e.printStackTrace(); //���� ���
			//������ ����ϵ�, �ؿ� �ִ� �ڵ�� �����Ѵ�.
			//�ֳĸ� ����� �� �ƴϰ�, ������ �����ش�. �ڵ�� ��� ������
		}
		
		System.out.println("��"); //�� �κ��� �������� ����.
	}

}









