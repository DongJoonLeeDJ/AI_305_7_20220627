package mytest;

public class MethodParameterTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		DaoTest d = new DaoTest();
		Member m = new Member();
		m.setName("이범식");
		m.setAge(30);
		m.setScore(100);
		int b = 1000;
		
		//test1에 b의 "값"만 넘김
		//그래서 test1의 a랑 Main의 b는 서로 값만 같은 별개의 존재
		d.test1(b);
		
		System.out.println(b); // 1000? 1001?
		
		//클래스를 이용해서 만든 변수는 모두 참조변수
		//C에서의 포인터랑 같은 개념(C++에서도 참조개념)
		//참조라는 건... 메모리에 이미 존재하는 값의 위치라고 보면 됨
		//test2에 Main에 있는 m값의 "위치"를 알려줬고
		//그래서 같이 바뀌는 거다.
		d.test2(m);
		System.out.println(m.getScore()); // 0? 100?
		
		//참조변수개념이라서 그렇다. m2는 m의 "위치"를 갖는다.
		//ArrayList랑 배열에서도 똑같이 적용됨
		Member m2 = m;
		m2.setAge(12); //그래서 m2 바뀌면 m도 바뀜
		System.out.println(m.getAge());
		System.out.println(m2.getAge());
		
		//값만 가지고 옴.
		int aa = b;
		aa = 10;
		System.out.println(aa); //10
		System.out.println(b); //1000
		
		
		Member m3 = new Member();
		m3.setAge(34);
		//new Member를 통해 만들어진 메모리의 위치가 m3
		//그 메모리의 위치를 보내주고, test1에서는 그 녀석의
		//값을 바꿈(age값)
		d.test1(m3);
		System.out.println(m3.getAge()); //main에서도
		//바뀌어서 출력된다.
		
		
		
	}

}
