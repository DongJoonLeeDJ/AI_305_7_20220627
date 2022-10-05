package javastudy01;
//Square = 제곱, 정사각형
public class Square {
	private int wh;
	//alt shift s 누르고 r 키 누른 다음
	//select All 누르고 Generate 누른다.
	//get~, set~ 메소드들을 Getter Setter라고 부름
	public int getWh() {
		return wh;
	}
	public void setWh(int wh) {
		if(wh<=0)
		{
			System.out.println("잘못된 wh 값");
			this.wh = 0;
			return;
		}
		this.wh = wh;
	}
	
	//3번 문제
	//생성자 2개 만들기
	//Square에 대한 생성자더라도 매개변수 개수가 다르면
	//서로 다른 생성자로 본다.
	public Square() { //이렇게 아무 것도 없는 생성자를 
		//super();	  //디폴트 생성자라고 부름
	}				  //만약 클래스에 생성자가 없으면 이 디폴트 생성자가 
					  //내부에 이미 자동으로 존재함
					  //이렇게 아무것도 없는 생성자는
					  //생성자가 '명시적으로' 하나라도 생기면
					  //없어진다. 그래서 이런 생성자를 쓰고 싶다면
					  //지금처럼 '명시적으로' 만들어줘야 함
		
	public Square(int wh) { //매개변수가 있는 Square 생성자
		//super();          //이런식으로 매개변수 다르게 해서
		//this.wh = wh;       //이름만 같은 메소드나 생성자 만드는 걸
		setWh(wh); //자동으로 예외처리 들어감
	}                       //오버로딩한다고 함
	
	
	
	
	
	
}
