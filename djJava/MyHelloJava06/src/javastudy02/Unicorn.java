package javastudy02;

//Cryptid�� ��ӹ���
//ȯ����(=����� ����)�̶�� ������ Ŭ������ ��ӹ���
public class Unicorn extends Cryptid implements Fliable, Runsable {

	//�������̹Ƿ� ���� �߰�
	private String Color;
	
	public String getColor() {
		return Color;
	}

	public void setColor(String color) {
		Color = color;
	}
	
	public void cry() {
		System.out.println(Color+"�� ���� �𳯸���.");
		System.out.println("����������~(������ ��Ҹ���)");
	}

	@Override
	public void Run() {
		// TODO Auto-generated method stub
		System.out.println("������ �޸��ϴ�.");
	}

	@Override
	public void jog() {
		// TODO Auto-generated method stub
		System.out.println("������~");

	}

	@Override
	public void Fly() {
		// TODO Auto-generated method stub
		System.out.println("����ϰ� ���ϴ�~");

	}

	@Override
	public void FlapWing() {
		// TODO Auto-generated method stub
		System.out.println("����ϰ� �۴��ŷ���~");

	}

	@Override
	public void sleep() {
		// TODO Auto-generated method stub
		System.out.println("������ ���� �� ��ϴ�.");

	}

}
