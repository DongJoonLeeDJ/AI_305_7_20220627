package javastudy01;

public class Sushi extends Food{

	private String wasabiBrand;
	
	//�Ű������� �ִ� �����ڸ� �ִٸ�
	//�׸��� �׷� �����ڰ� ���� �� �ִٸ�(Food���� 2���� ������ ����)
	//�� ������ �� �ϳ��� ���� �ȴ�.
	
	//����Ŭ������ �Ű����� ���� �����ڰ� �����Ƿ�
	//�ڼ�Ŭ������ ������ �Ű������� �־�� ��
	public Sushi(String name) {
		super(name); //Food Ŭ������ �����ڸ� �ǹ�
		// TODO Auto-generated constructor stub
	}

	//�� �ʹ��� �̸��� �ƴ϶� ���ݵ� �˰� �ʹٸ�?
	public Sushi(String name, int price) {
		super(name, price);//Food Ŭ������ �����ڸ� �ǹ�
	}
	//�� �ʹ��� �̸����� �� �ƴ϶� �ͻ��귣�嵵 �� �� �ִ�.
	public Sushi(String name, int price, String wasabiBrand) {
		super(name, price);//Food Ŭ������ �����ڸ� �ǹ�
		this.wasabiBrand = wasabiBrand;
	}

	//alt shift s ������ r Ű
	public String getWasabiBrand() {
		return wasabiBrand;
	}

	public void setWasabiBrand(String wasabiBrand) {
		this.wasabiBrand = wasabiBrand;
	}
	
	
	
	

}




