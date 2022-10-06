package javastudy07;

import java.util.ArrayList;

import javastudy01.Rectangle;
import javastudy02.Circle;
import javastudy03.GameCharacter;
import javastudy05_answer.Cuboid;
import javastudy05_answer.Sphere;
import javastudy05_answer.Student;

public class HelloJava03_players {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayList<GameCharacter> players 
		= new ArrayList<GameCharacter>();
		
		GameCharacter g = new GameCharacter();
		g.set_Class("���α׷���");
		g.setId("���ڵ�");
		g.setLevel(100);
		players.add(g);
		
		Novice n = new Novice();
		n.set_Class("���");
		n.setHp(10);
		n.setId("���");
		n.setLevel(1);
		players.add(n); //players�� GameCharacterŸ����
						//ArrayList������, �������� ���ؼ�
						//GameCharacter�� ����� �� �� ��
		
		GameCharacter m = new Magician();//������!!!
		//Magician is GameCharacter(O)
		//GameCharacter is Magician(X)
		m.set_Class("�븶����");
		m.setId("���¼ַ��̵���");
		m.setLevel(27);
		if(m instanceof Magician) {
			//�� 2���̶� �Ʒ� 1���� ���� ����̴�.
			Magician temp = (Magician)m;
			temp.setMp(1000);
			
			((Magician)m).setMp(100);
		}
		players.add(m);
		
		players.add(new Worrior());
		players.get(players.size()-1).set_Class("Ű��������");
		players.get(players.size()-1).setId("���̹��ǳ�");
		players.get(players.size()-1).setLevel(7);
		if(players.get(players.size()-1) instanceof Worrior)
		{
			Worrior w = (Worrior)players.get(players.size()-1);
			w.setHp(1200);
			w.setPower(5000);
			//�ռ���� ���� ���翡 ���ؼ�
			//w�� players �ȿ� 4��°���� ����Ű�� �ִ�.
			//�׷��� w���� set�ϸ� players.get(3)�� ���� �ٲ�
		}
		
		for (GameCharacter gameCharacter : players) {
			gameCharacter.printInfo();
			gameCharacter.attack();
			if(gameCharacter instanceof Novice)
			{
				//Worrior ���� sleep�� ȣ���ϰ� ��
				((Novice) gameCharacter).sleep();
				//Worrior ���� instanceof�� �ɸ� �� �ֱ� ����
				if(gameCharacter instanceof Worrior)
					((Worrior)gameCharacter).punch();
			}
			else if(gameCharacter instanceof Magician)
				((Magician) gameCharacter).magicArrow();
			
		}
		
		//TEST
		
		//ArrayList test = new ArrayList();
		ArrayList<Object> test = new ArrayList<Object>();
		//Object�� ��� Ŭ������ ����. ���� �������� ���ؼ�
		//��� Ÿ���� �ڷḦ �����ϴ� ����Ʈ ���� �� �ִ�.
		test.add(new Worrior());
		test.add(new Student());
		test.add(new Circle(1));
		test.add(new Sphere(1));
		test.add(new Rectangle());
		test.add(new Cuboid());
		test.add(new GameCharacter());
		test.add(new Magician());
		//����, ���ڿ�, ���� ���� �ٷ�� Ŭ������ �ִ�.
		test.add(1); //Integer
		test.add("�ȳ�"); //String
		test.add('c'); //Character
		
	}

}












