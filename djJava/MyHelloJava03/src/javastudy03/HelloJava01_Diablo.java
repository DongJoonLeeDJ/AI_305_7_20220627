package javastudy03;

public class HelloJava01_Diablo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("총 인원 " + GameCharacter.getCount());
		GameCharacter g1 = new GameCharacter();
		System.out.println("총 인원 " + GameCharacter.getCount());
		g1.set_Class("핑크전사");
		g1.setId("핑크퐁크재형");
		GameCharacter g2 = new GameCharacter("최강김혜민","야구마법사");
		System.out.println("총 인원 " + GameCharacter.getCount());
		GameCharacter g3 = new GameCharacter();
		g3.set_Class("직훈교사");
		g3.setId("에러메시지좀보라고");
		g3.setLevel(34);
		System.out.println("총 인원 " + GameCharacter.getCount());
		
		GameCharacter.sayHello(); //공통
		g1.attack(); //직업에 따라서 다른 공격을 출력한다.
		g2.attack();
		g3.attack();
		
		

	}

}
