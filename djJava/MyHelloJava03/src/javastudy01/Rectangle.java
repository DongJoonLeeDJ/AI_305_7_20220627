package javastudy01;
//직사각형
public class Rectangle {

	//w랑 h는 인스턴스별로 값이 다르다.
	//인스턴스 변수
	private int w;
	private int h;
	//게터 세터(Getter Setter)
	//private한 멤버 변수(=속성)에 접근할 때 쓴다.
	//alt shift s 누르고 r 키
	public int getW() {
		return w;
	}
	public void setW(int w) {
		if(w<=0) {
			System.out.println("오류!(W)");
			this.w=0;
			return; // setW를 종료시킴
		}
		this.w = w;
	}
	public int getH() {
		return h;
	}
	public void setH(int h) {
		if(h<=0) {
			System.out.println("H 오류");
			this.h = 0;
			return;
		}
		this.h = h;
	}

	//alt shift s 누르고 o
	public Rectangle(int w, int h) {
		setW(w);
		setH(h);
		//this.w = w;
		//this.h = h;
	}
	//w나 h 하나만 알아서 하나만 입력하는 경우를 정사각형으로 간주해보자
	public Rectangle(int wh) {
		setW(wh);
		setH(wh);
	}
	public Rectangle() {
		System.out.println("네모 클래스 생성~★");
	}
	
	//인스턴스 메소드
	//인스턴스 별로 동작하는 게 다르다.
	public int getArea() {
		if(w<=0 || h<=0)
		{
			System.out.println("Error!");
			return -1;
		}
		else if(w==h) {
			System.out.println("정사각형!");
		}
		return w*h;
	}
	
	
	
	
}








