package javastudy01;

public class HelloJava03_ThrowError {

	//s단부터 e단까지 출력
	//throws Exception  : 이 메소드(=함수)는 에러를 발생할 수도 있다는 걸 표시
	public static void mul(int s, int e) throws Exception {
		if(s>e) 
			throw new Exception("잘못된 매개변수! s가 더 큼");
		for(int i = s; i<=e; i++) {
			for(int j = 1; j<10; j++) {
				System.out.println(i+"x"+j+"="+(i*j));
			}
		}
	}
	
	
	
	
	
	public static void main(String[] args) throws Exception {
//Surround with try/catch
//		try {
//			mul(2,9);
//			mul(9,2);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		mul(2,9); //Add throws declaration
	}

}






