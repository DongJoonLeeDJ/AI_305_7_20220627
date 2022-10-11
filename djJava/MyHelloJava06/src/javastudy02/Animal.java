package javastudy02;

public abstract class Animal {
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
	public void setAge(int age) {
		Age = age;
	}
	

	public abstract void sleep();
}












