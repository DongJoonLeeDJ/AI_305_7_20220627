package javastudy01;

public class HelloJava02_testRectangle {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Rectangle r1 = new Rectangle(); //w�� h ��� 0�� ����
		Rectangle r2 = new Rectangle(2); 
		Rectangle r3 = new Rectangle(3,2); 
		System.out.println(r1.getArea());  //Error! -1
		System.out.println(r2.getArea()); //���簢��! 4
		System.out.println(r3.getArea()); //6
		r1.setH(10);
		r1.setW(5);
		System.out.println(r1.getArea()); //50
		
		//new Ű����
		//Ŭ������(), Ŭ������(�Ű�������) => ������
		//new + ������ => �ν��Ͻ�
		//�ν��Ͻ��� new + ������ �� �� ���� �þ��.
		//���� ���⼱ Rectangle ��ü�� 3�� �ִ�.
		//�� 3���� �ν��Ͻ��� �ִ�. 
		
		//�ν��Ͻ� ����, �ν��Ͻ� �޼ҵ���� �ٸ� ��!
		//Math��� Ŭ�������� '����������' ���Ǵ� �޼ҵ�
//		Math.random(); 
//		//Math��� Ŭ�������� '����������' ���Ǵ� ����
//		System.out.println(Math.PI);
//		Math m1 = new Math();
//		Math m2 = new Math();
//		Math m3 = new Math();
	}

}








