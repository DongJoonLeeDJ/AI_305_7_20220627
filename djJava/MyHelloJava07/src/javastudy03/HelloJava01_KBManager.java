package javastudy03;

import java.util.Scanner;

public class HelloJava01_KBManager {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner s = new Scanner(System.in);
		System.out.println("�� �� �Է��ұ��?");
		try {
			int count = Integer.parseInt(s.nextLine());
			if(count<=0)
				throw new Exception("���̰� 0 ������ �� ����");
		} catch (Exception e) {
			System.out.println("���� �Է� �߸���,"+e.getMessage());
			return;
		} finally {
			//���α׷��� ����ǵ� ������ ������ ��
			System.out.println("���α׷��� ��������ּ���.");
		}
	}

}









