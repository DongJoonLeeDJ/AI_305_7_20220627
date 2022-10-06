package javastudy07;

import javastudy03.GameCharacter;

public class Novice extends GameCharacter {
	private int hp;

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
