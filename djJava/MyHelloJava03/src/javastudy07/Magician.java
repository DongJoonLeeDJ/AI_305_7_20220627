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
		
		System.out.println(mp+"�� ���� ȥ���� ���� �ַο� ��;�");
		System.out.println(getId()+"���� " + get_Class()+"���� �ְ� ��� �ߵ�");
		System.out.println(getLevel()+"���� ġ�� ������ ����!");
		
	}
}
