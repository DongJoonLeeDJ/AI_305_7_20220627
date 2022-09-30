package my.hello.javastudy02;

import java.util.ArrayList;

public class JavaStudy02_List_class {

	public static void main(String[] args) {
		//배열, List 모두 숫자만 저장하거나
		//문자열만 저장하는 거 말고
		//객체를 저장하는 것도 된다.
		Student[] students = new Student[3];
		students[0] = new Student();
		students[1] = new Student("이동준",34,1);
		Student s = new Student("박지호",29,2);
		students[2] = s;
		
		//int나 double등으로 변수 선언할 때랑은 다르다.
		//1. new키워드 + 생성자가 있어야지만 객체 생성됨
		//2. 생성자 안에 경우에 따라선 매개변수가 들어가기도 함
		
		ArrayList<Student> mystudents
		= new ArrayList<Student>();
		
		mystudents.add(new Student("김진규",30,5));
		mystudents.add(new Student());
		Student ss = new Student("도광현",25,4);
		mystudents.add(ss);
		
		//new 키워드 + 생성자 
		//인스턴스(Instance)라고 부름!!!
		//Instance : 예시
		//Student의 Instance = Student의 예시
		//= 학생이라는 추상적 개념을 구체적인 예시로 보여준 것
		
		int ex; //ex에 기본적으로 숫자 0이 들어감
		//s0랑 s1은 아무것도 가리키지 않음
		//즉 null값이다.
		Student s0;
		Student s1 = null;
		mystudents.add(s1);
		students[0] =s1;
		
		
	}

}



