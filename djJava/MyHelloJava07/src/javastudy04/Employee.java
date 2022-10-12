package javastudy04;

public class Employee {
	private String name;
	private String sabeon;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSabeon() {
		return sabeon;
	}
	public void setSabeon(String sabeon) {
		this.sabeon = sabeon;
	}
	public Employee(String name, String sabeon) {
		this.name = name;
		this.sabeon = sabeon;
	}
	
	//�޸𸮸��� ������ �ؽ� �ڵ尡 ����
	//Object�� Ŭ���� �ִ� hashCode �޼ҵ� ��ſ�
	//���� ���� �� ȣ����
	//Object Ŭ������ �ִ� hashCode�� �޸� �������� �ִ�.
	//�̰Ÿ� ���� ���ϴ� ���� �ٲ��, HashSet���� �ߺ� ���� �� ��
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		//return super.hashCode();
		//���ڿ��� hashCode�� ����.
		//�׷��� ���ڿ��� ������ hashcode�� ���ٰ� ������
		//�׷��� Set������ �ߺ��� ���� ������ �߰� �� ��
		return (name+sabeon).hashCode();
	}
	
	//equals���� ������ �Ǿ� HashSet���� ����� ������
	@Override
	public boolean equals(Object obj) {
		Employee temp = (Employee)obj;
		return temp.getName().equals(name) && 
				temp.getSabeon().equals(sabeon);
	}
}






