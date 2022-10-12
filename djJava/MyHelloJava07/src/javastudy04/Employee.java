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
	
	//메모리마다 고유의 해시 코드가 있음
	//Object에 클래스 있는 hashCode 메소드 대신에
	//내가 만든 걸 호출함
	//Object 클래스에 있는 hashCode는 메모리 참조값이 있다.
	//이거를 내가 원하는 데로 바꿔야, HashSet에도 중복 값이 안 들어감
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		//return super.hashCode();
		//문자열의 hashCode로 비교함.
		//그래서 문자열이 같으면 hashcode가 같다고 간주함
		//그래서 Set에서도 중복된 값이 나오면 추가 안 됨
		return (name+sabeon).hashCode();
	}
	
	//equals까지 재정의 되야 HashSet에서 제대로 동작함
	@Override
	public boolean equals(Object obj) {
		Employee temp = (Employee)obj;
		return temp.getName().equals(name) && 
				temp.getSabeon().equals(sabeon);
	}
}






