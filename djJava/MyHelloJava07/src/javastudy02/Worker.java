package javastudy02;

public class Worker {
	private String Name; //�̸�
	private String cNum; //���
	//alt shift s ������ o Ű ������ �� ������ generate
	public Worker(String name, String cNum) {
		super();
		Name = name;
		this.cNum = cNum;
	}
	@Override
	public String toString() {
		return "�̸� : "+Name+", ��� : " + cNum;
	}
	//equals�� �������س��� ����� �̸��� ���� ����� ���� ������� ������
	@Override
	public boolean equals(Object obj) {
		Worker w = (Worker)obj; //w�� obj�� ���� ���� ����Ŵ
		return w.getcNum().equals(cNum) 
				&& w.getName().equals(Name);
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getcNum() {
		return cNum;
	}
	public void setcNum(String cNum) {
		this.cNum = cNum;
	}
	
	
}









