package codingtest;

import java.util.Scanner;

public class Solve {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//1. 3���� 8������ ���� �� Ȧ���� ���ϱ�
		//for��, ������ ������
		int sum = 0;
		for(int i = 3; i<=8; i++) {
			if(i%2 != 0)
				sum+=i;
		}
		System.out.println(sum);
		//2. ���ڿ� �Է� �� ������ϱ�
		Scanner s = new Scanner(System.in);
		System.out.println("���ڿ� �Է�");
		String sentense = s.nextLine();
		for(int i = sentense.length()-1; i>=0; i--)
			System.out.print(sentense.charAt(i));
		//3. ����Ʈ �� �Է� �� ��Ʈ�� ���
		//�������: 1byte= 8bit
		//ex) 7 byte �Է��ϸ� 56bit ���
		System.out.println("\n�� ����Ʈ?");
		try {
			int num = s.nextInt();
			System.out.println(num+"����Ʈ="+(num*8)+"��Ʈ");
		} catch (Exception e) {
			System.out.println("�� �߸� �Է���");
		}
		
	}

}
