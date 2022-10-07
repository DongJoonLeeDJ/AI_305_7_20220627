package javastudy01;

public class Emokase extends Food{

	public Emokase(String name, int price) {
		super(name, price);
		// TODO Auto-generated constructor stub
	}
	
	public void sayEmo() {
		System.out.println(getName()+"이모님~");
	}
	public String choiceMenu(String menu) {
		return getName()+"이모의 특성 메뉴 : " + menu;
	}

}
