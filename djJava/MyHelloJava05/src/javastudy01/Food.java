package javastudy01;

public class Food {
	private String name;
	private int price;
	public void eat() {
		System.out.println(name+"��/�� " + price+"������ ����");
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	//alt shift s ������ o Ű
	public Food(String name, int price) {
		super(); //����Ŭ������ ������. �� Object Ŭ������ ������
		this.name = name;
		this.price = price;
	}
	//���࿡ ������ ���� �� �ݵ��
	//�̸��� ������ �� �˾ƾ� �Ѵٸ�
	//�Ű����� 2�� �ִ� ������ �ϳ��� ����� �ȴ�.
	
	//�ƴϸ�.... ������ �̸����̶� �˾ƾ� �Ѵٸ�!
	
	public Food(String name) {
		super();
		this.name = name;
	}
	
	
	
	
	
}










