package javastudy05_answer;

import javastudy01.Rectangle;

//클래스명은 첫글자가 대문자인 게 권장사항이다.
//소문자로 적는다고 안 돌아가는 건 아님
public class Cuboid extends Rectangle{
	
	//생성자호출하게 되면
	//super 키워드 이용해서 명시적으로 부모클래스 생성 안 해도...
	//부모클래스의 생성자를 무조건 호출함
	public Cuboid() {
//		super(); // 이런식으로 명시적으로 적지 않아도...
	} 			 // super 이 코드가 암묵적으로 들어감
	
	private int z;

	public int getZ() {
		return z;
	}

	public void setZ(int z) {
		this.z = z;
	}
	public int getCuvoidVolume() {
		return getW()*getH()*z;
	}
	

}





