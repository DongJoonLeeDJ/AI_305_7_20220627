package javastudy01;

public class Pikachu implements Animalable, Cloneable {

	//�������̽� Cloneable ����, �� ������ clone �������̵��ϱ�
	@Override
	protected Object clone() throws CloneNotSupportedException {
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
