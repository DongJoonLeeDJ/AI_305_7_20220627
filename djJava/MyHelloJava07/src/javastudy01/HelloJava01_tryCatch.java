package javastudy01;

public class HelloJava01_tryCatch {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int a=0,b=0,c=0;
		try {
			a = 10;
			b = 0;
			System.out.println("c ���� ���غ���");
			c = a/b; //������. try catch �� �ϸ� ���⼭ ���α׷��� �����
		} catch (Exception e) {
			System.out.println("�� �κп� ���� ����");
		}
		System.out.println("a="+a);
		System.out.println("b="+b);
	}

}
