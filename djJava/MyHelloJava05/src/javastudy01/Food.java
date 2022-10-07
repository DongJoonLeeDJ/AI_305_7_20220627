package javastudy01;

public class Food {
	private String name;
	private int price;
	public void eat() {
		System.out.println(name+"을/를 " + price+"원으로 먹음");
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
	
	//alt shift s 누르고 o 키
	public Food(String name, int price) {
		super(); //상위클래스의 생성자. 즉 Object 클래스의 생성자
		this.name = name;
		this.price = price;
	}
	//만약에 음식을 만들 때 반드시
	//이름과 가격을 꼭 알아야 한다면
	//매개변수 2개 있는 생성자 하나만 만들면 된다.
	
	//아니면.... 음식의 이름만이라도 알아야 한다면!
	
	public Food(String name) {
		super();
		this.name = name;
	}
	
	
	
	
	
}










