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
		g.set_Class("프로그래머");
		g.setId("조코딩");
		g.setLevel(100);
		players.add(g);
		
		Novice n = new Novice();
		n.set_Class("백수");
		n.setHp(10);
		n.setId("흰손");
		n.setLevel(1);
		players.add(n); //players는 GameCharacter타입의
						//ArrayList이지만, 다형성에 의해서
						//GameCharacter를 상속한 건 다 들어감
		
		GameCharacter m = new Magician();//다형성!!!
		//Magician is GameCharacter(O)
		//GameCharacter is Magician(X)
		m.set_Class("대마법사");
		m.setId("모태솔로이동준");
		m.setLevel(27);
		if(m instanceof Magician) {
			//위 2줄이랑 아래 1줄이 같은 방식이다.
			Magician temp = (Magician)m;
			temp.setMp(1000);
			
			((Magician)m).setMp(100);
		}
		players.add(m);
		
		players.add(new Worrior());
		players.get(players.size()-1).set_Class("키보드전사");
		players.get(players.size()-1).setId("네이버의논객");
		players.get(players.size()-1).setLevel(7);
		if(players.get(players.size()-1) instanceof Worrior)
		{
			Worrior w = (Worrior)players.get(players.size()-1);
			w.setHp(1200);
			w.setPower(5000);
			//앞서배운 얕은 복사에 의해서
			//w는 players 안에 4번째값을 가리키고 있다.
			//그래서 w에서 set하면 players.get(3)의 값이 바뀜
		}
		
		for (GameCharacter gameCharacter : players) {
			gameCharacter.printInfo();
			gameCharacter.attack();
			if(gameCharacter instanceof Novice)
			{
				//Worrior 역시 sleep을 호출하게 됨
				((Novice) gameCharacter).sleep();
				//Worrior 역시 instanceof에 걸릴 수 있기 때문
				if(gameCharacter instanceof Worrior)
					((Worrior)gameCharacter).punch();
			}
			else if(gameCharacter instanceof Magician)
				((Magician) gameCharacter).magicArrow();
			
		}
		
		//TEST
		
		//ArrayList test = new ArrayList();
		ArrayList<Object> test = new ArrayList<Object>();
		//Object는 모든 클래스의 조상. 따라서 다형성에 의해서
		//모든 타입의 자료를 저장하는 리스트 만들 수 있다.
		test.add(new Worrior());
		test.add(new Student());
		test.add(new Circle(1));
		test.add(new Sphere(1));
		test.add(new Rectangle());
		test.add(new Cuboid());
		test.add(new GameCharacter());
		test.add(new Magician());
		//정수, 문자열, 문자 등을 다루는 클래스도 있다.
		test.add(1); //Integer
		test.add("안녕"); //String
		test.add('c'); //Character
		
	}

}












