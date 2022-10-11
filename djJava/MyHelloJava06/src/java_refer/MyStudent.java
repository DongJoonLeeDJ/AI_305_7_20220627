package java_refer;

public class MyStudent {

	private String Name;
	private int Age;
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public int getAge() {
		return Age;
	}
	public void setAge(int age) throws Exception {
		if(age<=0)
			throw new Exception("age값이 너무 적습니다. age="+age);
		Age = age;
	}
	
}
