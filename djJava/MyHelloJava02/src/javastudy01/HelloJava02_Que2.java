package javastudy01;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class HelloJava02_Que2 {

	public static void main(String[] args) {
		// �迭 : ũ�Ⱑ �����ǰ� Ư�� �ε����� �� ������
		// ArrayList : ũ�Ⱑ �����Ǿ� ���� ����.
		// ��� ���� �̹� �� �κп� ���ؼ��� �� ��������
		// �׸��� Ư�� �κ� ���� ���� -> �����ϸ� ���̰� ����

		// ǥ��� �� ������ �ִ�. �ι�° ����� ���� ������
		// �ϴ� ù��° ������� ǥ���� ��
		ArrayList<Integer> numbers = new ArrayList<Integer>();
		// �� ����� �����Ϸ��� �˾ƾ� �ϴ� ����
		// �������̶� �������̽��� �˾ƾ� ���� ����
		List<Integer> nums = new ArrayList<Integer>();
		Scanner s = new Scanner(System.in);
		for (int i = 0; i < 5; i++) {
			System.out.println(i + 1 + "��° ���� �Է��ϱ�");
			// ���� �Է��ؼ� �ٷ� ����ִ´�.
			//nums.add(s.nextInt());//�ڹٽ�ũ��Ʈ�� push�� ����
			int temp = s.nextInt();
			nums.add(temp);
		}
		// foreach ���� ctrl space
		// ����� �ڵ� ������ ctrl shift f ������ ��
		for (Integer integer : nums) {
			System.out.println(integer);
		}
		
		//���� ���� �� ��for���� ����.
		//���̰� 5��� 4 3 2 1 0 �̷��� for���� ���ư�
		System.out.println("�� �̸��� ���ڸ� ������?");
		int cutline = s.nextInt();
		for(int i = nums.size()-1; i>=0; i--) {
			if(cutline>nums.get(i))//get(i), i��° �� ����
				nums.remove(i); //remove(i), i��°�� ��������
		}
		for (Integer integer : nums) {
			System.out.println(integer);
		}
		
		//���� ù��° ���� -1�� ����
		nums.set(0, -1);
		

	}

}





