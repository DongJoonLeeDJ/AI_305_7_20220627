package javastudy01;

public class HelloJava04_Finally {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//finally : ��ħ��
		//try catch ��������
		//catch���� ���� ���� �ϵ� ���� finally �κ���
		//�� �����ؿ�
		
		int a=0,b=0,c=0,d=0;
		try {
			a = 10;
			c = a/b; //���ڴ� 0���� ���� �� �����Ƿ� ���⼭ ƨ��
		} catch (Exception e) {
			System.out.println("�߸���");
			return; //���α׷� ����
		} finally { //������ �����ÿ� ���� ����. 
			//DB �����ϴ� ���������� ������ ���� �� ���ܻ����
			//finally �κп� DB���� ���� �ڵ带 �Է���
			//�׷��� ��������� �ٷ� DB���� ������ ���� �� �ֵ��� �Ѵ�.
			//catch�� �ɷ��� �� �κ��� ������ ������
			System.out.println("�� �κ� ���� �� �� ���� �ִ�");
		}
		System.out.println("���� �� �� ����");
		
	}

}






