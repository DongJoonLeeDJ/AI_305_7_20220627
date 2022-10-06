package javastudy07;

import javastudy03.GameCharacter;

public class Magician extends GameCharacter {
	private int mp;

	public int getMp() {
		return mp;
	}

	public void setMp(int mp) {
		this.mp = mp;
	}
	
	public void magicArrow() {
		
		System.out.println(mp+"를 담은 혼신의 매직 애로우 쿠와아");
		System.out.println(getId()+"님의 " + get_Class()+"계의 최고 기술 발동");
		System.out.println(getLevel()+"레벨 치곤 괜찮은 공격!");
		
	}
}
