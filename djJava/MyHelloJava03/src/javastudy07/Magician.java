package javastudy07;

import javastudy03.GameCharacter;

public class Magician extends GameCharacter {
	private int mp;
		//����Ʈ �����ڴ� �ִ�.
		//������ �θ�Ŭ������ �־��� �Ű������� �ִ� �����ڴ� ����.
		//�θ�Ŭ������ ����Ʈ ������(Ŭ������() { } )�� ������
		//��������� �ֵ��� �������
		//�ڽ�Ŭ�������� ����Ʈ �����ڰ� �־��.
		//��, Circleó�� �θ�Ŭ������ ����Ʈ�����ڰ� '��������� ����'
		//���. �� �Ű������ִ� �����ڸ� ��������� �ִ� ��쿡��
		//Sphere�� Globeó�� �Ű������� �ִ� �����ڰ� �ݵ�� �־�� ��
		
		//���
		//����Ŭ������ ����Ʈ �����ڰ� �ְų�
		//Ȥ�� �����ڰ� �ƿ����� ��쿣
		//�ڽ� Ŭ������ �⺻������ ����Ʈ �����ڰ� �ִ�.
		//�ٵ� �θ� Ŭ������ �Ű����� �ִ� �����ڴ� �ڵ����� ������ ����

	public Magician() {
		
	}
	public Magician(String id, String _Class, int mp) {
		super(id, _Class);
		this.mp = mp;
	}

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
