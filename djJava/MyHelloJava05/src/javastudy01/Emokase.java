package javastudy01;

public class Emokase extends Food{

	public Emokase(String name, int price) {
		super(name, price);
		// TODO Auto-generated constructor stub
	}
	
	public void sayEmo() {
		System.out.println("�̸��~ " + getName()+"�ּ���.");
	}
	public String choiceMenu(String menu) {
		return "�̸��� Ư�� �޴� : " + menu;
	}

}
