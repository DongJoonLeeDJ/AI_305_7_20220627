package javastudy02;

public class HelloJava01_useCircle {
	
	//클래스 메소드
	public static void sayHello() {
		System.out.println("Hello World");
	}
	//인스턴스 메소드
	//이 걸 static 안에서 호출하려면, 인스턴스를 만들고 나서
	//그 안에서 호출해야 함
	public void toSay(String name) {
		System.out.println(name+"님, 안녕");
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Circle c1 = new Circle(2);
		Circle c2 = new Circle(3);
		
		System.out.println(c1.getArea());//12.56
		System.out.println(c2.getArea());//28.26
		
		Circle.setPI(3.0); //PI값을 바꾸면 모든 Circle들에게
						   //영향을 끼친다.
		System.out.println(c1.getArea()); //12.0
		System.out.println(c2.getArea()); //27.0
		
		//클래스 메소드 특징
		//클래스 메소드 안에는 인스턴스 변수나 인스턴스 메소드가
		//못들어간다.
		//이유 : static이 붙은 것들이 메모리에 먼저 올라가기 때문이다.
		//클래스 변수나 클래스 메소드는 프로그램 시작하자마자 올라감
		//인스턴스 변수나 인스턴스 메소드는 new 키워드 만날 때
		//메모리에 올라간다. 
		sayHello();
		//toSay("박지호"); //static이 붙어있는 메소드 안에는
		//static이 붙어있는 메소드나 변수만 온다.
		//static 없는 메소드 안에는
		//static이 붙은 변수나 메소드 올 수 있다.
		
		//static 붙어 있는 메소드 안에서
		//static 없는 메소드(=인스턴스 메소드)
		//호출하고 싶으면 인스턴스를 만들고 나서 호출하면 됨
		//이런 걸 객체화라고 함(=자기 자신을 이용해 인스턴스 만들기)
		new HelloJava01_useCircle().toSay("이동준");
		HelloJava01_useCircle temp = 
				new HelloJava01_useCircle();
		temp.toSay("김혜민");
	}					
					   
}						






