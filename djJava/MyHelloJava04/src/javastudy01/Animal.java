package javastudy01;

public class Animal {
	private String name;
	private int age;
	
	

	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public int getAge() {
		return age;
	}



	public void setAge(int age) {
		this.age = age;
	}



	//동물이라면 누구나 다 잠을 잔다.
	public void Sleep() {
		System.out.println("zZZ...");
	}
}











