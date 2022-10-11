package javastudy01;

public class Pikachu implements Animalable, Cloneable {

	//�������̽� Cloneable ����, �� ������ clone �������̵��ϱ�
	//�ٸ� ��Ű�������� ��� Ȱ���Ϸ��� protected�� ��� public���� �ٲ�� ��
	//Cloneable�� clone �޼ҵ�� �̹� default�� �����Ǿ� ������
	//�������̵��� �ؾ� �� �� �ִ�.
	@Override
	public Object clone() throws CloneNotSupportedException {
		// TODO Auto-generated method stub
		return super.clone();
	}
	
	private String Name; //��ü���� Ʈ���̳ʰ� �θ��� �̸�

	//������
	public Pikachu(String name) {
		super();
		Name = name;
	}
	//�������̽��� ���� �޼ҵ� ����
	@Override
	public void charming() {
		// TODO Auto-generated method stub
		System.out.println("��ī��ī");
	}

	//Getter Setter
	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

}
