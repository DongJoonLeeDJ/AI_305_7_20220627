package mytest.myjava;

public class Customer {
	private String name;
	private int age;
	private String id;
	//alt shift s ������ o Ű
	public Customer(String name, int age, String id) {
		this.name = name;
		this.age = age;
		this.id = id;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "�̸�:"+name+",����:"+age+",id="+id;
	}
	//���̰� limit �̸��̸� false, limit �̻��̸� true
	//������ 20���� ������ ���������� ���Ŀ� �ٲ� ���� ���
	public boolean isAdult(int limit) {
		if(limit>age)
			return false;
		else
			return true;
	}
	//�����ڿ��� üũ. ������ ���̵� �ٲ� �� ������ �Ű������� �޴´�.
	public boolean isAdmin(String admin) {
		if(this.id.equals(admin))
			return true;
		else 
			return false;
	}
	
}







