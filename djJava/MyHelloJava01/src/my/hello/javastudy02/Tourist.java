package my.hello.javastudy02;

public class Tourist {

	private String name;//이름
	private int age;//나이
	private int beonho;//번호
	private String sNum; //소셜넘버
	//주민번호이므로 앞자리가 0인 경우도 있을 수 있어서
	//String으로 했다.
	
	//alt shift s 그리고 o
	//마우스 오른쪽 클릭 -> Source -> Generate Constructor using Field
	
	//참고
	//여기서 생성자 하나도 안 만들면
	//암묵적으로
	/*
	 * public Tourist() {
	 * } 이렇게 아무것도 안 하는 빈 생성자가 하나 만들어 짐*/
	//그러나 여기에 명시적으로 생성자 만들면
	//이 비어있는 생성자는 없어짐
	//그래서 비어있는 생성자를 쓰고 싶으면 이 땐 명시적으로
	//비어있는 생성자를 적어줘야 함
	public Tourist() {
		//super(); //조상객체(부모객체)의 생성자
	}
	public Tourist(String name, int age, int beonho, String sNum) {
		this.name = name;
		this.age = age;
		this.beonho = beonho;
		this.sNum = sNum;
	}
	public Tourist(String name) {
		this.name = name;
	}

	//alt shift s 누르고 r
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
	public int getBeonho() {
		return beonho;
	}
	public void setBeonho(int beonho) {
		this.beonho = beonho;
	}
	public String getsNum() {
		return sNum;
	}
	public void setsNum(String sNum) {
		this.sNum = sNum;
	}
	
	
	
	
}







