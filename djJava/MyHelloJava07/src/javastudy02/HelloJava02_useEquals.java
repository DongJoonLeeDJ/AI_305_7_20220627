package javastudy02;

public class HelloJava02_useEquals {

	public static void main(String[] args) {
		String a = "이동준";
		String b = "이동준";
		//c와 d는 데이터는 같지만 다른 위치를 가리킴. 즉 동명이인이라고 보면 됨
		//c는 대구의 김보규, d는 부산의 김보규라고 보면 된다.
		//equals는 이름만 딱 비교해줌
		String c = new String("김보규");
		String d = new String("김보규");
		
		Student s1 = new Student("이동준",340);
		Student s2 = new Student("이동준",340);
		
		System.out.println(a==b); //t
		System.out.println(c==d); //f -> c랑 d가 다른 '곳을' 참조 함
		System.out.println(s1==s2); //f
		
		System.out.println(a.equals(b)); //t
		System.out.println(c.equals(d)); //t
		
		//다르게 나오는 이유는
		//s1과 s2가 다른 곳을 참조하기 때문이기 때문이고
		//Object 클래스에서의 equals할 때 hash코드를 비교 (고유값)
		
		//s1과 s2가 사실상 똑같은 데... 다르다고 나오니...
		//비교할 때 값만 가지고 비교하게 해보기
		System.out.println(s1.equals(s2)); //f 

		
		Worker w1 = new Worker("박지호", "001");
		Worker w2 = new Worker("박지호", "001");
		Worker w3 = new Worker("박지호", "002");
		
		System.out.println(w1.equals(w2)); //t
		System.out.println(w2.equals(w3)); //f
		
		
		
	}

}




