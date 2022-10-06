package javastudy07;

import javastudy03.GameCharacter;

public class Novice extends GameCharacter {
	private int hp;

	//GameCharacter의 매개변수가 있는 생성자가
	//여기에는 없다.
	//Novice에는 그저 디폴트 생성자(매개변수랑 내용없는 생성자)
	//이거만 있을 뿐이다!!
	
	public int getHp() {
		return hp;
	}

	public void setHp(int hp) {
		this.hp = hp;
	}
	
	public void sleep() {
		System.out.println(hp+"를 모두 회복");
		System.out.println("백수인 " + getId()+"의 hp 회복");
		System.out.println(getLevel()+"레벨이니 슬슬 전직해야지~?");
	}
	
}
