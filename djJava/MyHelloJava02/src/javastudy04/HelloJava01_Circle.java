package javastudy04;

public class HelloJava01_Circle {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		MyCircle c1 = new MyCircle();
		c1.setR(3); //원의 반지름이 3
		System.out.println(c1.getArea());
		System.out.println(c1.getRound());
		MyCircle c2 = new MyCircle();
		c2.setR(-3); //잘못된 값을 입력함
		System.out.println(c2.getArea());
		System.out.println(c2.getRound());
		if(c2.getArea()!=0) {
			System.out.println(c2.getArea());
		} else {
			System.out.println("c2 반지름 확인해요");
		}
		//원을 만들자마자 넓이 등을 구할 수 있다.
		MyCircle m1 = new MyCircle(4);
		if(m1.getArea()!=0)
			System.out.println(m1.getArea());
		System.out.println(new MyCircle(5).getArea());
		//참고 getRound했을 때 .00002 이렇게 나온 건
		//고정소수점(소수점 고정)과 
		//부동소수점(소수점이 고정이 아님) 이슈때문.
		//디지털세계에서 실수를 완벽하게 표현할 수 없고
		//그에 따른 오차때문에 생긴 문제다.
	}

}
