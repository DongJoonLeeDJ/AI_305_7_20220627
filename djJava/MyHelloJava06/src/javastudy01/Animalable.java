package javastudy01;

public interface Animalable {
	public void charming();
	//default ���� ���� �ش�޼ҵ带 �������� �ʾƵ� �ȴ�.
	public default void sleep() {
		System.out.println("���� ��ϴ�.");
	}
}
