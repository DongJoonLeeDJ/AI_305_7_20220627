package javastudy01;

import java.util.ArrayList;
import java.util.Scanner;

public class HelloJava01_Restaurant {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Food f = new Food("�����");
		Sushi s = new Sushi("�����ʹ�",10000,"����ͻ��");
		//e�� Food ��� Emokase��� �ص�
		//FoodŸ�� ArrayList�� �迭�� ��
		//�̰� ���� �� ������ ������ �����ٷ���...
		Food e = new Emokase("�ֹ̰�", 20000);
		
		//Food()�� Sushi()�� Emokase() �̷��� ����ִ�
		//�����ڸ� �� ����� ������ Food�� �Ű������� ���� �����ڴ�
		//���� �����̴�.
		
		ArrayList<Food> foods = new ArrayList<Food>();
		f.setPrice(1000);
		foods.add(f);
		foods.add(s);
		foods.add(e);
		
		//Scanner�� ���ôٽ��� Ŭ����
		//�����ڰ� ������ �Ű������� �ִ�.
		//System Ŭ���� �ȿ� �ִ� in�� Ŭ���� ����
		Scanner scan = new Scanner(System.in);
		while(true) {
			System.out.println("� ���� �߰��ҷ�?");
			String name = scan.nextLine();
			Food temp;
			if(name.equals("����") || name.equals("Sushi")) {
				System.out.println("�󸶾�?");
				int price = scan.nextInt();
				scan.nextLine(); //hasNextLine �ƴ�
				System.out.println("���� �ʹ�?");
				String Sushiname = scan.nextLine();
				System.out.println("���� �ͻ���?");
				String wasabi = scan.nextLine();
				temp = new Sushi(Sushiname, price, wasabi);
				foods.add(temp);
			}
				
		}
	}

}






