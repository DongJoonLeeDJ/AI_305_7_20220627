package javastudy01;

public class PorkCutlet extends Food{

	public PorkCutlet(String name, int price) {
		super(name, price);
		// TODO Auto-generated constructor stub
	}
	
	//�������̵� = ����� ��
	//Food������ eat�� �ƴ϶� ���� �ٸ� eat�� ����� �� �� �ִ�.
	//�����ε��̶��� �ٸ�!!!!!!!!!!!!!!!! �����ε��� �Ű������� �ٸ�
	//���� �̸��� �޼ҵ��.
	
	//�ܿ�� ��
	//�������̵� = Override
	//��������Ʈ = OverWrite = �����
	//�������̵��̶� ��������Ʈ�� ������ ������
	@Override
	public void eat() {
		// TODO Auto-generated method stub
		//super.eat(); // ����Ŭ������ eat�� ȣ����
		System.out.println(getName()+"�� �ְ��� ���");
		System.out.println(getPrice()+"���� ������ �Ʊ��� �ʳ�~");
		
	}
	//�����ε� : Overloading
	//�����ε��� �޼ҵ�� ���� �Ű����� �ٸ� ��(������ Ÿ��)
	//����Ÿ���� �߿����� �ʰ� �Ű������� �߿���
	public void eat(int count) {
		System.out.println(count+"�� ��� ����");
	}
	public void eat(String source) {
		System.out.println(source+"�� ������");
	}
	

}




