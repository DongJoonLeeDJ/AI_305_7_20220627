package javastudy01;

public class HelloJava02_GimChun {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Food f1 = new Food("�̸�", 5000);
		Food f2 = new PorkCutlet("�����", 8000);
		PorkCutlet f3 = new PorkCutlet("���", 9000);
		f1.eat();
		f2.eat(); //f2�� f3�� PorkCutlet�� eat()�� ȣ����
		f3.eat();
		
		if(f2 instanceof PorkCutlet)
		{
			((PorkCutlet)f2).eat(5);
		}
		if(f2 instanceof PorkCutlet) 
		{
			((PorkCutlet)f2).eat("�ʰ�����");
		}
		f3.eat(10);
		f3.eat("���ݸ�");
		
		
	}

}
