package javastudy01;

public class Squirtle implements Pokemonable {

	@Override
	public void charming() {
		System.out.println("���ϲ���~");
	}

	@Override
	public void grow() {
		return; //�̰� �Ĺ��� �ƴϴϱ� �ƹ��͵� �� ��
		
	}

	@Override
	public void fight() {
		System.out.println("������~");
	}

	

}
