package javastudy03;

import java.util.ArrayList;
import java.util.Scanner;

public class HelloJava02_Diablo2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner s = new Scanner(System.in);
		System.out.println("총 캐릭터 몇 개?");
		int count = s.nextInt();
		
		//배열
		GameCharacter[] players = new GameCharacter[count];
		for(int i = 0; i<players.length; i++) {
			System.out.println(i+1+"번째 캐릭터 레벨은?");
			int lv = s.nextInt();
			if(lv<0) {
				i--;
				continue; //i가 줄었다가 i++ 만나면서 원래대로 돌아옴
			}
			System.out.println("그 캐릭터 직업은?");
			s.nextLine();
			String _class = s.nextLine();
			System.out.println("그 캐릭터 ID는?");
			String id = s.nextLine();
			players[i] = new GameCharacter(id, _class);
			players[i].setLevel(lv);
		}
		
		for (GameCharacter gameCharacter : players) {
			gameCharacter.printInfo();
		}
		
		//ArrayList
		ArrayList<GameCharacter> gamers = 
				new ArrayList<GameCharacter>();
		//for(; gamers.size() < count; ) {
		//}
		while(gamers.size() != count) {
			System.out.println("캐릭터 레벨?");
			int level = s.nextInt();
			if(level<0)
				continue;
			System.out.println("캐릭터직업?");
			s.nextLine();
			String _class = s.nextLine();
			System.out.println("캐릭터 ID?");
			String Id = s.nextLine();
			GameCharacter g = new GameCharacter(Id,_class);
			g.setLevel(level);
			gamers.add(g);
			//gamers.add(new GameCharacter(Id, _class));
			
		}
		for (GameCharacter gameCharacter : gamers) {
			gameCharacter.printInfo();
		}
		
	}

}
