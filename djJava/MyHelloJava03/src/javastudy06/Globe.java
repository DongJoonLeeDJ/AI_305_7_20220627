package javastudy06;

import javastudy05_answer.Sphere;

public class Globe extends Sphere{

	public Globe(int r) {
		super(r);
	}
	//������ ������
	public void rollTheGlobe(String color) {
		this.Color = color;
		System.out.println("������ ���� " + this.Color);
		spin();
	}
	public void setColor(String color) {
		this.Color = color;
	}
	public String getColor() {
		return this.Color;
	}

	
}
