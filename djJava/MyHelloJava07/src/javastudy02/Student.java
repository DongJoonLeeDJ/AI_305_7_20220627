package javastudy02;

public class Student {
	private String Name;
	private int Age;
	public Student(String name, int age) {
		//super();
		Name = name;
		Age = age;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public int getAge() {
		return Age;
	}
	public void setAge(int age) {
		Age = age;
	}
	
	//Object 클래스의 toString 메소드를 오버라이딩함
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		//return super.toString();
		return "이름:"+Name+", 나이:"+Age;
	}
	
	
}
