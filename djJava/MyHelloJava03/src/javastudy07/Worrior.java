package javastudy07;


//Worrior�� GameCharacter�� �ڼ��� �ڼ� Ŭ����
public class Worrior extends Novice{

	private int power;
	
	public int getPower() {
		return power;
	}

	public void setPower(int power) {
		this.power = power;
	}

	public void punch() {
		System.out.println(power+"��ŭ�� ����!");
	}
}
