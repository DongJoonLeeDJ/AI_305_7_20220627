package javastudy01;
//Square = ����, ���簢��
public class Square {
	private int wh;
	//alt shift s ������ r Ű ���� ����
	//select All ������ Generate ������.
	//get~, set~ �޼ҵ���� Getter Setter��� �θ�
	public int getWh() {
		return wh;
	}
	public void setWh(int wh) {
		if(wh<=0)
		{
			System.out.println("�߸��� wh ��");
			this.wh = 0;
			return;
		}
		this.wh = wh;
	}
	
	//3�� ����
	//������ 2�� �����
	//Square�� ���� �����ڴ��� �Ű����� ������ �ٸ���
	//���� �ٸ� �����ڷ� ����.
	public Square() { //�̷��� �ƹ� �͵� ���� �����ڸ� 
		//super();	  //����Ʈ �����ڶ�� �θ�
	}				  //���� Ŭ������ �����ڰ� ������ �� ����Ʈ �����ڰ� 
					  //���ο� �̹� �ڵ����� ������
					  //�̷��� �ƹ��͵� ���� �����ڴ�
					  //�����ڰ� '���������' �ϳ��� �����
					  //��������. �׷��� �̷� �����ڸ� ���� �ʹٸ�
					  //����ó�� '���������' �������� ��
		
	public Square(int wh) { //�Ű������� �ִ� Square ������
		//super();          //�̷������� �Ű����� �ٸ��� �ؼ�
		//this.wh = wh;       //�̸��� ���� �޼ҵ峪 ������ ����� ��
		setWh(wh); //�ڵ����� ����ó�� ��
	}                       //�����ε��Ѵٰ� ��
	
	
	
	
	
	
}
