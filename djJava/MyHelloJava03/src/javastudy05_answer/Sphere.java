package javastudy05_answer;

import javastudy02.Circle;

public class Sphere extends Circle{

	//add constructor sphere
	//constructor : ������
	//super : ����Ŭ������ ������ ȣ���� ��
	//KBStudent�ʹ� �ٸ��� �̰� �����ڰ� �־�� ��
	//Circle�� ����Ʈ ������(=�ƹ��͵� ���� ������)�� ���� ������
	//Circle�� �ִ� �����ڸ� ȣ���ؾ����� �� ��ü�� ���� �� �ִ�.
	public Sphere(int r) {
		super(r); //Circle Ŭ������ �����ڸ� ȣ���� ��
		//Circle ������ ȣ��ÿ� PI���� ���ǵǵ��� �س���
		//PI = 3.14
	}
	
	public double getVolume() {
		return (4/3)*getPI()*getR()*getR()*getR();
	}
	
	//Sphere Ŭ������
	//KBStudent�ʹ� �ٸ��� ���ο� �Ӽ��� �߰����� �ʾҴ�.
	//��ſ� ���ο� ����� �߰��ߴ�.
	
	
	//protected
	//���� ��Ű��(=����)������ public�̶� �Ȱ���.
	//����Ʈ ���� �����ڶ� ����������.
	
	//������ �޶�����
	//Sphere�� ��ӹ��� Ŭ���������� �̰� �� �� �ִ�.
	protected String Color;
	protected void spin() {
		System.out.println("���ۺ���~");
	}

}








