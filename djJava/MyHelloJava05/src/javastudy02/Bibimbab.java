package javastudy02;

public class Bibimbab extends Food{

	//Food 자체는 어떻게 먹을지 정의하지 않음
	//대신 Food를 상속받으면 어떻게 먹을지 정의할 수 있다.
	//또한!
	//음식이긴 음식인 데, 어떻게 먹는지에 대해서 누락이 될 수 있는 데
	//Food를 추상화시키면 그럴 일이 없다.
	@Override
	public void eat() {
		// TODO Auto-generated method stub
		System.out.println("비벼먹는다.");
	}

}



