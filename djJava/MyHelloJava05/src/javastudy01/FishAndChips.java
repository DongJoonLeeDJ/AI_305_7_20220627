package javastudy01;

public class FishAndChips extends Food{

	public FishAndChips(String name, int price) {
		super(name, price);
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public void eat() {
		// TODO Auto-generated method stub
		super.eat();//����Ŭ������ �ִ� �� �״�� ������
		System.out.println("������ ������ ������~");
	}

}
