package javastudy06;

import javastudy05_answer.Sphere;

public class HelloJava02_playGlobe {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Globe g1 = new Globe(10);
		g1.rollTheGlobe("�Ķ���");
		g1.setColor("���");
		System.out.println(g1.getColor());
		
		//Color, spin�� protected��
		//Sphere�� ����� Ŭ�����̰ų�
		//Sphere�� ���� ������ �ִ� Ŭ����������
		//������ ������
//		g1.Color
//		g1.spin()
		
		Sphere s1 = new Sphere(5);
//		s1.spin();
//		s1.Color="red"

	}

}
