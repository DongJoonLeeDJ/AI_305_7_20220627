package javastudy01;

public class Squirtle implements Pokemonable {

//	@Override
//	public void sleep() {
//		System.out.println("드르르렁 쿠아아아");
//	}
	@Override
	public void charming() {
		System.out.println("꼬북꼬북~");
	}

	@Override
	public void grow() {
		return; //이건 식물이 아니니까 아무것도 안 함
		
	}

	@Override
	public void fight() {
		System.out.println("물대포~");
	}

	

}
