package javastudy03;
//Comparable : 비교에 사용되는 인터페이스
public class KBStudent implements Comparable<KBStudent>{

	private String name;
	private String gender;
	private int age;
	private int number; //Database에서 " 기본키(PK, Primary key) " 랑 같다.
	public KBStudent(String name, String gender, int age, int number) {
		this.name = name;
		this.gender = gender;
		this.age = age;
		this.number = number;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	//출력할 때 쓸 메소드
	@Override
	public String toString() {
		return String.format("이름:%s, 성별:%s, 나이:%d, 번호:%d",
				name,gender,age,number);
	}
	//비교하는 기준은 오직 number뿐이다.
	//중복체크할 때 사용할 메소드(contain에서 쓰임)
	@Override
	public boolean equals(Object obj) {
		/*
		 	KBStudent k = (KBStudent)obj;
		 	return k.getNumber() == number;
		*/
		return ((KBStudent)obj).getNumber()==number;
	}
	@Override
	public int compareTo(KBStudent o) {
		// TODO Auto-generated method stub
		//return 0;
		return age - o.getAge(); //오름 차순 정렬에 쓰임
	}
	
	
}
















