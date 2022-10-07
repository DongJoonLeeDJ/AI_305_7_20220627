package javastudy02;

public abstract class Food { //abstract : 추상적인
	private int price;
	public String name;
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public abstract void eat();
}
