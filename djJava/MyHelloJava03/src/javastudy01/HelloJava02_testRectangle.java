package javastudy01;

public class HelloJava02_testRectangle {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Rectangle r1 = new Rectangle(); //w와 h 모두 0인 상태
		Rectangle r2 = new Rectangle(2); 
		Rectangle r3 = new Rectangle(3,2); 
		System.out.println(r1.getArea());  //Error! -1
		System.out.println(r2.getArea()); //정사각형! 4
		System.out.println(r3.getArea()); //6
		r1.setH(10);
		r1.setW(5);
		System.out.println(r1.getArea()); //50
		
		//new 키워드
		//클래스명(), 클래스명(매개변수들) => 생성자
		//new + 생성자 => 인스턴스
		//인스턴스는 new + 생성자 할 때 마다 늘어난다.
		//지금 여기선 Rectangle 객체가 3개 있다.
		//즉 3개의 인스턴스가 있다. 
		
		//인스턴스 변수, 인스턴스 메소드랑은 다른 것!
		//Math라는 클래스에서 '공통적으로' 사용되는 메소드
//		Math.random(); 
//		//Math라는 클래스에서 '공통적으로' 사용되는 변수
//		System.out.println(Math.PI);
//		Math m1 = new Math();
//		Math m2 = new Math();
//		Math m3 = new Math();
	}

}








