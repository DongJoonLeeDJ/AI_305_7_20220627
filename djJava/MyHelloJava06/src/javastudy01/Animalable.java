package javastudy01;

public interface Animalable {
	public void charming();
	//default 쓰면 굳이 해당메소드를 구현하지 않아도 된다.
	public default void sleep() {
		System.out.println("잠을 잡니다.");
	}
}
