package javastudy03;

public class HelloJava01_School {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Teacher t = new MathTeacher();
		MathTeacher m = new MathTeacher();
		ProgramingTeacher p = new ProgramingTeacher();
		JavaProgramingTeacher j 
		= new JavaProgramingTeacher("�̵���", "�Ӻ����");
		
		t.Teach();
		m.Teach();
		p.Teach();
		j.Teach();
		
		Teacher t2 = new Teacher() {
			@Override
			public void Teach() {
				// TODO Auto-generated method stub
				System.out.println("������ ���°� �Բ� ���� ����");
			}
		};
		t2.Teach();
		
		ProgramingTeacher p2 = new ProgramingTeacher() {
			public void Teach() {
				System.out.println(getName()
						+"���� C ��� �����ĵ帳�ϴ�.");
			}
		};
		p2.setName("������");
		p2.Teach();
	}

}
