package javastudy05;
//인터페이스는 끝에 able를 붙임
//특정한 기능을 구현하라고 '명시적'으로 알려주는 것
//(추상클래스는 좀 간접적이다.)

//1. 특정 기능을 구현하도록 명시적으로 강제하고 있음
//2. 다중 상속이 가능함
//3. 인터페이스끼리 상속도 됨
public interface Animalable {

	public void Move();
	public void Run();
	public void Charming();
}
