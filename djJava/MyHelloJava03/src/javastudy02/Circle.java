package javastudy02;

public class Circle {
	//�ν��Ͻ� ���� �� �ٸ���.
	//�׷��� �ν��Ͻ� ������ �ȴ�.
	private int r;
	
	//PI�� ���� ��� Ŭ������ ���������� �����ϰ�
	//���������� �� �� �ִ� ������ Ŭ���� ����
	//�ν��Ͻ� ���� �ٸ� �� �ƴϴ�!
	private static double PI;

	//���������� �� �� �ִ� �޼ҵ带 Ŭ���� �޼ҵ�
	//�ν��Ͻ� ���� �ٸ� �� �ƴϴ�!
	public static double getPI() {
		return PI;
	}
	//Ŭ���� �޼ҵ�
	public static void setPI(double pI) {
		PI = pI;
	}

	//�ν��Ͻ� �޼ҵ�
	public int getR() {
		return r;
	}

	public void setR(int r) {
		this.r = r;
	}
	
	//�Ű������� �ִ� �����ڸ� ����鼭 ����Ʈ �����ڴ� ��������.
	//����Ʈ ������ : �Ű����� ���� �ƹ� ���۵� �� �ϴ� ������
	/*
	  public Circle() { 
	 
	  }
	  */
	
	//�ݵ�� ���������� ó���� ������ ����� ��
	//PI���� �⺻������ 3.14�� ������ �Ѵ�.
	public Circle(int r) {

		this.r = r;
		PI=3.14;
	}
	
	public double getArea() {
		return r*r*PI;
	}
	
	
	
	
}
