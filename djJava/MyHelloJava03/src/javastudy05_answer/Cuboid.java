package javastudy05_answer;

import javastudy01.Rectangle;

//Ŭ�������� ù���ڰ� �빮���� �� ��������̴�.
//�ҹ��ڷ� ���´ٰ� �� ���ư��� �� �ƴ�
public class Cuboid extends Rectangle{
	
	//������ȣ���ϰ� �Ǹ�
	//super Ű���� �̿��ؼ� ��������� �θ�Ŭ���� ���� �� �ص�...
	//�θ�Ŭ������ �����ڸ� ������ ȣ����
	public Cuboid() {
//		super(); // �̷������� ��������� ���� �ʾƵ�...
	} 			 // super �� �ڵ尡 �Ϲ������� ��
	
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





