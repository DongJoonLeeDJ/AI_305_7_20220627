package javastudy05_answer;

import javastudy02.Circle;

public class HelloJava02_useRound {

	public static void main(String[] args) {
		Circle c1 = new Circle(3);
		System.out.println(c1.getArea());
		
		Sphere sp1 = new Sphere(2);
		System.out.println(sp1.getArea());
		System.out.println(sp1.getVolume());
		
		//����
		//Ŭ���������� �θ�Ŭ������ �ڽ�Ŭ������ �����ؼ� ����.
		//�� static�� ���� �� �ڽ�Ŭ������ �θ�Ŭ������
		//��𿡼� �ٲٵ��� ���� ���� ������ �޴´�.
		
		Circle.setPI(1);//CircleŬ�������� PI�ٲ�µ�
		System.out.println(sp1.getVolume()); //Sphere���� ���Ⱘ
		//4/3  = 1(int)
		//4/3�� �Ǽ��μ� ������ 4.0/3 �̳� 4/3.0 �ƴϸ� 4.0/3.0�ؾ� ��
		
		Sphere.setPI(0);//Sphere���� �ٲ�� �� Circle���� ���Ⱘ
		System.out.println(c1.getArea());
		
		
		
	}

}
