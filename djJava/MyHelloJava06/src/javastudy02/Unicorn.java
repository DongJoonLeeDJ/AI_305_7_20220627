package javastudy02;

//Cryptid를 상속받음
//환상종(=상상의 동물)이라는 별도의 클래스에 상속받음
public class Unicorn extends Cryptid implements Fliable, Runsable {

	//유니콘이므로 색깔 추가
	private String Color;
	
	public String getColor() {
		return Color;
	}

	public void setColor(String color) {
		Color = color;
	}
	
	public void cry() {
		System.out.println(Color+"빛 털을 흩날린다.");
		System.out.println("히히히히힝~(영롱한 목소리로)");
	}

	@Override
	public void Run() {
		// TODO Auto-generated method stub
		System.out.println("멋지게 달립니다.");
	}

	@Override
	public void jog() {
		// TODO Auto-generated method stub
		System.out.println("총총총~");

	}

	@Override
	public void Fly() {
		// TODO Auto-generated method stub
		System.out.println("우아하게 납니다~");

	}

	@Override
	public void FlapWing() {
		// TODO Auto-generated method stub
		System.out.println("우아하게 퍼덕거려요~");

	}

	@Override
	public void sleep() {
		// TODO Auto-generated method stub
		System.out.println("영물은 잠을 안 잡니다.");

	}

}
