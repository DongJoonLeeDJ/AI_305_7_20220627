package javastudy01;

public class HelloJava03_ThrowError {

	//s�ܺ��� e�ܱ��� ���
	//throws Exception  : �� �޼ҵ�(=�Լ�)�� ������ �߻��� ���� �ִٴ� �� ǥ��
	public static void mul(int s, int e) throws Exception {
		if(s>e) 
			throw new Exception("�߸��� �Ű�����! s�� �� ŭ");
		for(int i = s; i<=e; i++) {
			for(int j = 1; j<10; j++) {
				System.out.println(i+"x"+j+"="+(i*j));
			}
		}
	}
	
	
	
	
	
	public static void main(String[] args) throws Exception {
//Surround with try/catch
//		try {
//			mul(2,9);
//			mul(9,2);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		mul(2,9); //Add throws declaration
	}

}






