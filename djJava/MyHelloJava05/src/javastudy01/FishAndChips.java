package javastudy01;

public class FishAndChips extends Food{

	public FishAndChips(String name, int price) {
		super(name, price);
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public void eat() {
		// TODO Auto-generated method stub
		super.eat();//조상클래스에 있는 거 그대로 가져옴
		System.out.println("영국의 마지막 자존심~");
	}

}
