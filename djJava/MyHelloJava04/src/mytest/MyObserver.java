package mytest;

import java.util.ArrayList;

public class MyObserver {
	static ArrayList<Robot> Observer;
	static void unregist(int n) {
		Observer.remove(n);
	}
	static void regist(Robot r) {
		Observer.add(r);
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Robot r = new SCV();
		
		Observer = new ArrayList<Robot>();
		Observer.add(new SCV());
		Observer.add(new DropShip());
		Observer.add(new Tank());
		unregist(0);
		regist(new DropShip());
		regist(new Robot() {
			
			@Override
			public void Repair() {
				System.out.println("¹«½¼À¯´ÖÀÎÁø ¸ô¶óµµ ·Îº¿ÀÓ ¤·¤·");
				
			}
		});
		for (Robot robot : Observer) {
			robot.Repair();
		}
		
		Observer.forEach(a->a.Repair());
		
		
	}

}
