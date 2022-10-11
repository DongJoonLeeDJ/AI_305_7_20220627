package java_refer;

import javastudy01.Animalable;
import javastudy01.Pikachu;

public class Dj_Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Pikachu p = new Pikachu("이동준");
		try {
			Pikachu pp = (Pikachu)p.clone();
		} catch (CloneNotSupportedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		Animalable a = ()-> {
			System.out.println("우어웅");
		};
		//a.sleep();
		a.charming();
		
		try {
			int aa = 10;
			int b = 0;
			int c = aa/b;
			
		} catch (Exception e) {
			// TODO: handle exception
			//e.printStackTrace();
		}
		System.out.println("그래도 코드는 계속 된다.");
	}

}
