package javastudy07;

import java.util.ArrayList;

import javastudy03.GameCharacter;

public class HelloJava02_Polymorphism {
	public static void main(String[] args) {

		//������
		//�پ��� ���¸� �� ���ɼ�
		//����
		//���ʺκ��� ���� Ŭ���� = ������ �κ��� �ڼ� Ŭ����
		//������ �κ� is ���� �κ�
		//Ex)
		GameCharacter g = new Novice();
		//g�� ����
		//������ �ڼ�
		
		//Novice is GameCharacter (O)
		//GameCharacter is Novice
		
		
		//�������� Ȱ���ϸ�
		//����Ŭ������ �ϳ��� ArrayList�� ����� ����
		ArrayList<GameCharacter> players = 
				new ArrayList<GameCharacter>();
		
		//�Ʒ��� ���� �� ����Ŭ������ ��ӹ��� ��� Ŭ������
		//�ϳ��� �迭�� (Ȥ�� ����Ʈ��) ������� �� �ְ� �Ǿ���.
		players.add(new Novice());
		players.add(new Magician());
		players.add(new GameCharacter());
		
		
		//players�� Ȱ���ϱ� ���� �˾ƾ� �ϴ� �����
		GameCharacter gg = new Magician();
		gg.set_Class("�븶����");
		gg.setId("djlee");
		gg.setLevel(250);
		//�ָ��ؾ��� ��
		//gg�� Magician���� instance�� �������.
		//������ ��·�� GameCharacterŸ���̴�.
		//�׷��� gg�� magician���ν� Ȱ���ϱ� ���ؼ�
		//Ÿ�� ��ȯ�ؾ� ��
		((Magician)gg).setMp(0);
		gg.attack();
		gg.printInfo();
		((Magician)gg).magicArrow();
		
		//���δ�� ����ȯ�� �ϸ� �� �ȴ�.
		//javastudy07.Magician cannot be cast to javastudy07.Novice
		//gg�� GameCharacterŸ���̰�
		//Magician���� �ν��Ͻ��� ���������
		//Novice�� ���� �� �ƴϴ�. ���� �̷��� �Ժη�
		//����ȯ �߸��ϸ� �� �ȴ�.
		
		//if(gg instanceof Novice)�� �ǹ�
		//gg�� Novice�� �ν��Ͻ��� ������°�?
		if(gg instanceof Novice) //�� ���ǹ� ������ ������
		{
			//�׷��� ���ǹ����� üũ�� �� ����� ��
			
			((Novice)gg).setHp(100);		
			Novice ggg = (Novice)gg;
			//ggg.sleep();
			((Novice)gg).sleep();		
		}
		
		
//		System.out.println(gg.getId());
//		Magician ggg = (Magician)gg;
//		ggg.magicArrow();
//		ggg.setId("����Ź");
//		System.out.println(gg.getId());
		
	}
}










