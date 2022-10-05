package javastudy03;

public class GameCharacter {

	private String Id; //ĳ���� ID
	private String _Class; //ĳ���� Ŭ����
	private int Level; //ĳ���� ����
	private static int Count; //���� �� �ο� ��. int������ �����ÿ� 0
	//������ : alt shift s Ű ������ o Ű ������.
	public GameCharacter(String id, String _Class) {
		Count++; //ĳ���� �����Ǹ鼭 �� �ο��� �þ
		Id = id;
		this._Class = _Class;
	}
	public GameCharacter() {
		Count++; //ĳ���� �����Ǹ鼭 �� �ο��� �þ
	}

	//getter setter : alt shift s ������ r Ű
	
	public String getId() {
		return Id;
	}
	public void setId(String id) {
		Id = id;
	}
	public String get_Class() {
		return _Class;
	}
	public void set_Class(String _Class) {
		this._Class = _Class;
	}
	public int getLevel() {
		return Level;
	}
	public void setLevel(int level) {
		Level = level;
	}
	//�� �ο����� ���Ƿ� �ǵ帱 �� ���� ��
	//�� �ο����� �о���� ���� �ְ�
	//���� �߰��� �����ٸ� �þ
	public static int getCount() {
		return Count;
	}
	
	public static void sayHello() {
		System.out.println("�ȳ�~~");
	}
	public void attack() {
		if(_Class.contains("����")) {
			System.out.println("��������");
		} else if(_Class.contains("����")) {
			System.out.println("���� ����");
		} else {
			System.out.println(Level+"lv "+_Class+"�� ������");
		}
	}
	
	//ĳ���� ���� �ϰ� ��� ����
	public void printInfo()
	{
		System.out.println(this.Id+"�� ������ " + this._Class);
		System.out.println("Lv : " + this.Level);
	}
	
	
}






