package javastudy03;

public class GameCharacter {

	private String Id; //캐릭터 ID
	private String _Class; //캐릭터 클래스
	private int Level; //캐릭터 레벨
	private static int Count; //게임 총 인원 수. int변수는 선언당시에 0
	//생성자 : alt shift s 키 누르고 o 키 누른다.
	public GameCharacter(String id, String _Class) {
		Count++; //캐릭터 생성되면서 총 인원이 늘어남
		Id = id;
		this._Class = _Class;
	}
	public GameCharacter() {
		Count++; //캐릭터 생성되면서 총 인원이 늘어남
	}

	//getter setter : alt shift s 누르고 r 키
	
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
	//총 인원수는 임의로 건드릴 수 없게 됨
	//총 인원수는 읽어들일 수만 있고
	//유저 추가할 때마다만 늘어남
	public static int getCount() {
		return Count;
	}
	
	public static void sayHello() {
		System.out.println("안녕~~");
	}
	public void attack() {
		if(_Class.contains("전사")) {
			System.out.println("물리어택");
		} else if(_Class.contains("마법")) {
			System.out.println("마법 공격");
		} else {
			System.out.println(Level+"lv "+_Class+"의 때리기");
		}
	}
	
	//캐릭터 정보 일괄 출력 가능
	public void printInfo()
	{
		System.out.println(this.Id+"의 직업은 " + this._Class);
		System.out.println("Lv : " + this.Level);
	}
	
	
}






