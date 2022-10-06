package javastudy07;

import java.util.ArrayList;

import javastudy03.GameCharacter;

public class HelloJava01_Seal {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayList<GameCharacter> gamers = new ArrayList<GameCharacter>();
		gamers.add(new GameCharacter("뗑이", "초급마법사"));
		gamers.add(new GameCharacter("쭈니", "초급전사"));
		gamers.add(new GameCharacter("뀨","직업불명"));
		
		for(int i = 0; i<gamers.size(); i++)
			gamers.get(i).setLevel(1+10*i);
		
		for (GameCharacter gameCharacter : gamers) {
			gameCharacter.attack();
			gameCharacter.printInfo();
		}
		
		ArrayList<Magician> magicians = new ArrayList<Magician>();
		Magician m1 = new Magician();
		m1.set_Class("마술사같은마법사");
		m1.setId("이은결");
		m1.setLevel(100);
		m1.setMp(50);
		magicians.add(m1);
		
		magicians.add(new Magician());
		magicians.get(1).set_Class("대통령초청마법사");
		magicians.get(1).setId("최현우");
		magicians.get(1).setLevel(100);
		magicians.get(1).setMp(50);
		
		Magician m2 = new Magician();
		m2.set_Class("대마법사였던법사");
		m2.setId("이동준");
		m2.setLevel(34);
		m2.setMp(3);
		magicians.add(m2);
		
		for (Magician magician : magicians) {
			magician.attack();
			magician.printInfo();
			magician.magicArrow();
		}

		ArrayList<Novice> white_hands = new ArrayList<Novice>();
		Novice n = new Novice();
		//Novice nTest = new Novice();//("Xenoint","마법사");
		n.setHp(30);
		n.setId("가람타운백수");
		n.setLevel(34);
		n.set_Class("노비스");
		white_hands.add(n);
		white_hands.add(new Novice());
		white_hands.get(white_hands.size()-1).setHp(500);
		white_hands.get(white_hands.size()-1).setId("가람타이거");
		white_hands.get(white_hands.size()-1).setLevel(1997);
		white_hands.get(white_hands.size()-1).set_Class("슈퍼노비스");
		Novice n2 = new Novice();
		n2.setHp(1030);
		n2.setId("공부안한수료생");
		n2.setLevel(29);
		n2.set_Class("아픈손가락");
		white_hands.add(n2);
		
		for (Novice novice : white_hands) {
			novice.attack();
			novice.printInfo();
			novice.sleep();
		}
		
		
		
	}

}
