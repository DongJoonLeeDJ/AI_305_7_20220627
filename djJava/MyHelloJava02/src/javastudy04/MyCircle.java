package javastudy04;

public class MyCircle {
	private int r; //��������
	private final double pi=3.14;//��������
	
	//alt shift s ������ r ������
	//r �κи� üũ�� ���� generate
	public int getR() {
		return r;
	}
	//������ ���� 0������ ��� 0���� �������ѹ�����.
	public void setR(int r) {
		if(r<=0)
			this.r=0;
		else
			this.r = r;
	}
	
	//public Ÿ���� �Լ�(=�޼ҵ�)�� 2�� ���� �����.
	//���̱��ϱ�� �ѷ� ���ϱ�
	
	public double getArea() {
		if(r<=0)
		{
			System.out.println("������ �� Ȯ�ιٶ�");
			return 0;
		}
		return r*r*pi;
	}
	public double getRound() {
		if(r<=0)
		{
			System.out.println("������ �� Ȯ�ιٶ�");
			return 0;
		}
		return 2*r*pi;
	}
	
	//public MyCircle() {
		
	//}

	
	//������
	//�⺻ ���´� �Ʒ��� ���� �ƹ� �͵� �������� �ʴ� �ڵ��
	//public MyCircle() {}
	//������ = ���ϰ� ���� �Լ���� ����.
	
	//�����ڴ� ���ڱ״�� ������ �� ȣ���ϹǷ�
	//������ �����԰� ���ÿ� �Ӽ����� �ٷ� ������ �� �ִ�.
	//new MyCircle() �̶�� ���� ��
	//r ���� ���߿� ���� �����ؾ� ������
	//�̷��� �Ű������� r �� ������ ����� ���ÿ� r �� ���� ������
	public MyCircle(int r) {
		setR(r);
	}
	//����!!!!!
	//�̷��� �����ڸ� ��������� ���ԵǸ�
	//������ �ִ� �����ڰ� ������
	//������ �ִ� ������ => public MyCircle() {} 
	//�׷��� �� ���·� �ٽ� main�ִ� �ڵ� ������ �������� �ִ�.
	
	//�ذ�å
	//�ƹ� �͵� ���� �����ڸ� �̹��� '���������' �ٽ� ���ش�.
	public MyCircle() {
		
	}
	
	//�����ε�
	//�����ڳ� �Լ�(=�޼ҵ�)���� �� 
	//�̸��� �Ȱ��� �� �Ű������� ������ Ÿ���� �ٸ� ��쿣
	//���� �ٸ� �ɷ� �����
	//�� MyCircle(r)�̶� MyCircle()�� ���� ���� �ٸ� ��
	//�� �ߺ��� �����ڳ� �Լ��� �ƴ϶� ��!
	
	
}
