package javastudy01;

public class PorkCutlet extends Food{

	public PorkCutlet(String name, int price) {
		super(name, price);
		// TODO Auto-generated constructor stub
	}
	
	//오버라이드 = 덮어쓰는 것
	//Food에서의 eat이 아니라 전혀 다른 eat을 만들어 낼 수 있다.
	//오버로딩이랑은 다름!!!!!!!!!!!!!!!! 오버로딩은 매개변수가 다른
	//같은 이름의 메소드들.
	
	//외우는 법
	//오버라이딩 = Override
	//오버라이트 = OverWrite = 덮어쓰기
	//오버라이딩이랑 오버라이트랑 발음이 유사함
	@Override
	public void eat() {
		// TODO Auto-generated method stub
		//super.eat(); // 조상클래스의 eat을 호출함
		System.out.println(getName()+"은 최고의 돈까쓰");
		System.out.println(getPrice()+"원의 가격이 아깝지 않네~");
		
	}
	//오버로딩 : Overloading
	//오버로딩은 메소드명만 같고 매개변수 다른 거(개수나 타입)
	//리턴타입은 중요하지 않고 매개변수가 중요함
	public void eat(int count) {
		System.out.println(count+"번 돈까스 먹음");
	}
	public void eat(String source) {
		System.out.println(source+"에 찍어먹음");
	}
	

}




