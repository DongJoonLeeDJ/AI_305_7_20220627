package javastudy05_answer;

import javastudy02.Circle;

public class HelloJava02_useRound {

	public static void main(String[] args) {
		Circle c1 = new Circle(3);
		System.out.println(c1.getArea());
		
		Sphere sp1 = new Sphere(2);
		System.out.println(sp1.getArea());
		System.out.println(sp1.getVolume());
		
		//참고
		//클래스변수는 부모클래스랑 자식클래스가 공유해서 쓴다.
		//즉 static이 붙은 건 자식클래스든 부모클래스든
		//어디에서 바꾸든지 간에 전부 영향을 받는다.
		
		Circle.setPI(1);//Circle클래스에서 PI바꿨는데
		System.out.println(sp1.getVolume()); //Sphere에도 영향감
		//4/3  = 1(int)
		//4/3을 실수로서 쓰려면 4.0/3 이나 4/3.0 아니면 4.0/3.0해야 함
		
		Sphere.setPI(0);//Sphere에서 바꿨는 데 Circle에도 영향감
		System.out.println(c1.getArea());
		
		
		
	}

}
