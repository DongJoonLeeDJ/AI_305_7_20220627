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
	(String name, int age, double score) {
		this.name = name;
		this.age = age;
		this.score = score;
	}
	//오버로딩
	//함수나 생성자에서 매개변수의 개수나 타입이 다르면
	//이름이 똑같아도 된다. 이름이 똑같아도
	//다른 걸로 취급해준다.
	//1번 문제
	public Student(String name) {
		this.name = name;
	}


	
	//Getter Setter
	//2번문제

	//alt shift s 누르고 그 다음 r 키 누르기
	//마우스 오른쪽 클릭 -> Source-> Generate Getter and Setter
	
	//select All 누르고 Generator 누르세요.
	
	public String getName() {
		return name;
	}
	//오버로딩!!!
	public String getName(String title) {
		return name+title;
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


	public double getScore() {
		return score;
	}


	public void setScore(double score) {
		this.score = score;
	}
	
	
	
	
	
	
}





