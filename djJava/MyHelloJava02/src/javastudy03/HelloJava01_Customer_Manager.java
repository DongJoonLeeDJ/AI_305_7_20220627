package javastudy03;

import java.util.Random;

public class HelloJava01_Customer_Manager {

	public static void main(String[] args) {
		
		//class를 이용해서 변수를 선언할 땐
		//반드시 new키워드가 필요하다.
		//왜냐면 사용자 정의 자료형은 일반적인 자료형이 아니다.
		//그래서 메모리를 따로 할당해줘야 함
		//new 키워드 = 메모리 할당 키워드 = c의 malloc이랑 같음
		//※ Integer와 같이 이미 존재하는 객체들도
		//new 키워드를 써서 메모리 할당하기는 한다.
		Integer i = new Integer(5);
		Random r = new Random();
		//다만 Customer처럼 유저가 만든 건 '무조건' 할당해야 함
		//Random이나 몇몇 자바에서 만들어준 클래스들도
		//new 키워드 이용해서 메모리 할당하라고 지정이 되어 있다.
		
		//new 뒤에 붙은 클래스명()의 의미
		//메모리를 할당하기는 하는 데, 얼만큼, 어떤 형태로
		//할당할지 정해주는 것
		
		//Customer 형태로 할당함
		//여기엔 최소 1개의 int와 2개의 String이 들어갈 수 있는
		//공간이 필요하죠.
		
		//그리고 c1은 이러한 공간의 위치를 '참조(=가리킴)'하는 것
		//c의 포인터와 유사한 개념.
		
		//요약!!!
		//내가 만든 class나 몇몇 타입의 변수들은
		//new 키워드와 클래스명을 이용해서 선언해줘야 함!!!
		//아래의 c2처럼 그냥 선언하면 안 되고
		//c1처럼 new키워드+클래스명이 필요하다.
		
		
		//클래스 이용해서 선언한 변수나 클래스 자체를
		//객체(Object)라고 부른다.
		
		Customer c1 = new Customer();
		c1.name="김혜민";
		c1.age=30;
		c1.cNum="00001";
		c1.age=-300;
		
		Customer c2;
		//c2.name = "이동준";
		//c2.age=34;
		//c2.cNum="00000";
		
		//KBCustomer kb1 = new KBCustomer();
		//kb1.age=100;
		
		KBCustomer k1 = new KBCustomer();
		k1.setAge(34);
		k1.setName("이동준");
		k1.setcNum("00000");
		
		//sysout 누르고 ctrl space
		System.out.println(k1.getAge());
		System.out.println(k1.getName());
		System.out.println(k1.getcNum());
		

	}

}










