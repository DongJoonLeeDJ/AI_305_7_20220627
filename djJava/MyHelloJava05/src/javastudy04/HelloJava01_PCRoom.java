package javastudy04;

public class HelloJava01_PCRoom {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Drmundo d = new Drmundo();
		d.Q();
		d.W();
		d.E();
		d.R();
		Cogmo c = new Cogmo();
		c.Q();
		c.W();
		c.E();
		c.R();
		c.passive();
		
		Lol chogas = new Lol() {
			
			@Override
			public void W() {
				// TODO Auto-generated method stub
				System.out.println("������ ���¢��");
			}
			
			@Override
			public void R() {
				// TODO Auto-generated method stub
				System.out.println("����");
			}
			
			@Override
			public void Q() {
				// TODO Auto-generated method stub
				System.out.println("�Ŀ�");
			}
			
			@Override
			public void E() {
				// TODO Auto-generated method stub
				System.out.println("��ī�ο� ����");
			}
		};
		//Lol l = new Lol();
		chogas.Q();
		chogas.W();
		chogas.E();
		chogas.R();
		
		new Lol() {
			public void dance() {
				System.out.println("�� ĳ���Ͱ� ���� ��ϴ�~");
			}
			
			@Override
			public void W() {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void R() {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void Q() {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void E() {
				// TODO Auto-generated method stub
				
			}
		}.dance(); //Lol ��ӹ��� �͸� Ŭ�������� �ִ� dance�� ȣ���Ϸ���
		//�̷��� �ν��Ͻ� �����ڸ��� ȣ���ϴ� �� �ܿ� ����� ����
		//�ƴϸ� Lol���� dance �޼ҵ带 �����־� �Ѵ�.
		
	}

}






