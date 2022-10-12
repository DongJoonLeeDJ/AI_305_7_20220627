package javastudy01;

public class HelloJava04_Finally {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//finally : 마침내
		//try catch 구간에서
		//catch에서 무슨 짓을 하든 간에 finally 부분은
		//꼭 실행해요
		
		int a=0,b=0,c=0,d=0;
		try {
			a = 10;
			c = a/b; //숫자는 0으로 나눌 수 없으므로 여기서 튕김
		} catch (Exception e) {
			System.out.println("잘못됨");
			return; //프로그램 종료
		} finally { //데이터 연동시에 많이 쓰임. 
			//DB 연결하는 과정에서나 쿼리문 날릴 때 예외생기면
			//finally 부분에 DB접속 끊는 코드를 입력함
			//그래서 문제생기면 바로 DB부터 무조건 끊을 수 있도록 한다.
			//catch에 걸려도 이 부분은 무조건 실행함
			System.out.println("이 부분 실행 안 될 수도 있다");
		}
		System.out.println("여긴 안 됨 ㅎㅎ");
		
	}

}






