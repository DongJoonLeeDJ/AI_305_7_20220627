package my.hello.javastudy02;

import java.util.ArrayList;

public class JavaStudy01_List {
	public static void main(String[] args) {
		//�迭
		//����� ���ÿ� ũ�Ⱑ ������
		int[] numbers = new int[5];
		
		//ArrayList(=List��� �θ�)
		//�迭���� �ٸ��� ���� ��ÿ� ũ�Ⱑ 0
		ArrayList<Integer> nums 
		= new ArrayList<Integer>();
		
		//���� �Ҵ��غ��� ��(�迭)
		numbers[0] = 10;
		numbers[1] = 30;
		//���� �о���̴� ��(�迭)
		System.out.println("ù��°��:"+numbers[0]);
		
		//���� �߰��ϴ� ��
		nums.add(10); //js�� pushó�� ���ο� ���� �߰���
		//js�� �迭ó�� ������ ��ġ�� ���� �߰����� �� ��
		nums.add(30);
		
		//Ư�� ��°�� ���� �����غ���
		nums.set(0, 20); //ù��° ���� 20���� ����
		System.out.println(nums.get(0));//ù��°�� ����
	
		//foreach ���� ctrl space �ϸ� ����� �ڵ�
		//�迭�� ���̸�ŭ �ݺ����� �����ϰ�
		//�ݷ�(:) �տ� �ִ� �� �迭 �ȿ� �ִ� ������ҵ�!
		for (Integer integer : numbers) {
				System.out.println(integer);
		}//�迭�� ���̰� 5�̰�, 2,3,4��°�� �⺻���� 0�� ����
		for (Integer integer : nums) {
			System.out.println(integer);
		}
	}
}




