package javastudy06;

import javastudy05_answer.Sphere;

public class HelloJava02_playGlobe {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Globe g1 = new Globe(10);
		g1.rollTheGlobe("파란색");
		g1.setColor("녹색");
		System.out.println(g1.getColor());
		
		//Color, spin은 protected라서
		//Sphere를 상속한 클래스이거나
		//Sphere와 같은 폴더에 있는 클래스에서만
		//접근이 가능함
//		g1.Color
//		g1.spin()
		
		Sphere s1 = new Sphere(5);
//		s1.spin();
//		s1.Color="red"

	}

}
