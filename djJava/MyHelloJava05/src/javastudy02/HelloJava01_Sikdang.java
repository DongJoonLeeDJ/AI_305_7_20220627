package javastudy02;

import java.util.ArrayList;

public class HelloJava01_Sikdang {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//Food f = new Food(); //�߻�Ŭ����������� �ν��Ͻ� �� ����
		Food f = new Taco();
		Ramen r = new Ramen();
		Bibimbab b = new Bibimbab();
		
		f.eat();
		r.eat();
		b.eat();
		
		ArrayList<Food> foods = new ArrayList<Food>();
		foods.add(f);
		foods.add(r);
		foods.add(b);
		//foods�� �ִ� ���ĵ��� ��� eat�� ȣ���� �� �ִ�.
		//����! eat�� ���� �� �ٸ��� �����Ǿ� �ִ�.
		for (Food food : foods) {
			food.eat();
		}
		
		//�͸�Ŭ����
		//Ramen ��� �ٸ��� �̸��� �ƿ� ���� Ŭ����
		//temp������ ���̴� Ŭ������...
		Food temp = new Food() {
			
			@Override
			public void eat() {
				System.out.println("�⵵�ϰ� �Դ´�.");
			}
		};
		temp.setName("��ȸ�Ĵ� ��");
		foods.add(temp);
		
		foods.add(new Food() {
			
			@Override
			public void eat() {
				System.out.println("�����ϰ� �Դ´�.");
			}
		});
	}

}
