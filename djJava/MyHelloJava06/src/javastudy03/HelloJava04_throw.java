package javastudy03;

public class HelloJava04_throw {
	
	//�� ���� ���ڸ� �Է¹޾Ƽ� �� ���� �����ϴ� �Լ�
	//throw ������
	//catch ���
	//Exception ����
	public static int sum(int start, int end) throws Exception {
		if(end<start)
			throw new Exception("start�� end ���� �߸���");
		else
		{
			int sum = 0;
			for(int i =start; i<=end; i++) {
				sum+=i;
			}
			return sum;
		}
		
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			System.out.println("�ȳ��ϼ���.");
			throw new Exception("����!!!"); //������ �Ϻη� ����
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		try {
			int num = sum(10,1);
			System.out.println(num);
		} catch (Exception e) {
			e.printStackTrace(); //start�� end ���� �߸���
		}
	}

}
