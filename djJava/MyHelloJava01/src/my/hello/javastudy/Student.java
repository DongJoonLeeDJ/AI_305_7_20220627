package my.hello.javastudy02;

public class Student {
	//name, age, score
	
	private String name;//이름
	private int age;//나이
	private double score;//점수
	//생성자
	//만약 속성들이랑 getter, setter만 적었다면
	//암묵적으로 아래와 같이 아무 것도 없는 생성자가
	//자동으로 만들어진 것이다.
	public Student() {
		
	}
	
	
	//생성자
	public Student
	(String name, int age, int score) {
		this.name = name;
		this.age = age;
		this.score = score;
	}
}





