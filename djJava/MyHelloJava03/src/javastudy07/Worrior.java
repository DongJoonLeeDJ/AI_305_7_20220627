package javastudy07;


//Worrior는 GameCharacter의 자손의 자손 클래스
public class Worrior extends Novice{

	private int power;
	
	public int getPower() {
		return power;
	}

	public void setPower(int power) {
		this.power = power;
	}

	public void punch() {
		System.out.println(power+"만큼의 공격!");
	}
}
