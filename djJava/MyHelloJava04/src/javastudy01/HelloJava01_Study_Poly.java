package javastudy01;

import java.util.ArrayList;

public class HelloJava01_Study_Poly {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//�Ϲ����� ��ü ����
		Animal a = new Animal();
		Dog d = new Dog();
		Cat c = new Cat();
		//������
		//������ ����, �������� new �ڼ�()
		Animal a1 = new Dog();
		Animal c2 = new Cat();
		
		//�������� ������ ��
		//����Ŭ���� Ÿ������ �� �迭�̳� ArrayList��
		//�ڼ�Ŭ���� Ÿ���� ��ü���� ����.
		ArrayList<Animal> zoo = new ArrayList<Animal>();
		zoo.add(a);
		zoo.add(d);
		zoo.add(c);
		zoo.add(a1);
		zoo.add(c2);
		zoo.add(new Animal());
		zoo.add(new Dog());
		zoo.add(new Cat());
	}

}









