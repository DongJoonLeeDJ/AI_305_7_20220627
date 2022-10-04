package javastudy03;

//하나의 변수 안에 한 고객의 모든 정보를 집어넣고 싶다면?
//C에서는 구조체와 같은 사용자 정의 타입 만들고
//자바스크립트에서는 객체 혹은 class 혹은 function이용해서 
//종합적인 타입의 변수를 만들고
//C#이나 Java, C++에선 아래와 같이 class를 만들어주면 된다.
public class Customer {

	//고객
	//이름,나이,고객번호
	String name;
	int age;
	String cNum;
	
	//이 걸 안 적으면
	//Customer() {} <- 이렇게 아무것도 없는 것이 쓰여있음
	//이걸 생성자
	//생김새 : 클래스명() 혹은 클래스명(매개변수들)
	//생성자 -> new 키워드의 가이드라인
	//어떻게 생긴 메모리를 만들 것인가....
	//이런식으로 생성할 때마다 뭔가 수행하도록
	//내용을 추가할 수 있다.
	Customer() {
		System.out.println("고객 1명 생성");
	}
	
}








