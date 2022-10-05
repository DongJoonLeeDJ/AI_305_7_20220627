package javastudy02;

public class Circle {
	//인스턴스 별로 다 다르다.
	//그래서 인스턴스 변수가 된다.
	private int r;
	
	//PI와 같이 모든 클래스가 공통적으로 접근하고
	//공통적으로 쓸 수 있는 변수를 클래스 변수
	//인스턴스 별로 다른 게 아니다!
	private static double PI;

	//공통적으로 쓸 수 있는 메소드를 클래스 메소드
	//인스턴스 별로 다른 게 아니다!
	public static double getPI() {
		return PI;
	}
	//클래스 메소드
	public static void setPI(double pI) {
		PI = pI;
	}

	//인스턴스 메소드
	public int getR() {
		return r;
	}

	public void setR(int r) {
		this.r = r;
	}
	public Circle(int r) {
		super();
		this.r = r;
		PI=3.14;
	}
	
	public double getArea() {
		return r*r*PI;
	}
	
	
	
	
}
