package javastudy06;

import javastudy05_answer.Person;

public class HelloJava01_defaultTest2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Person p = new Person();
		//p.name = "김보규"; //import를 한다해도
		//default는 패키지가 다르면 private으로 봄
		//단, public이 붙은 건... import만 해주면 쓸 수 있음
		p.alias = "귀염둥이";
	}

}
