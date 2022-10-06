package javastudy01;

import java.util.ArrayList;

public class HelloJava01_Study_Poly {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//일반적인 객체 선언
		Animal a = new Animal();
		Dog d = new Dog();
		Cat c = new Cat();
		//다형성
		//왼쪽은 조상, 오른족은 new 자손()
		Animal a1 = new Dog();
		Animal c2 = new Cat();
		
		//다형성을 응용한 것
		//조상클래스 타입으로 된 배열이나 ArrayList에
		//자손클래스 타입의 객체들이 들어간다.
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









