package javastudy03;

public class JavaProgramingTeacher extends ProgramingTeacher {

	public JavaProgramingTeacher(String Name, String Major) {
		setName(Name);
		setMajor(Major);
	}
	@Override
	public void Teach() {
		// TODO Auto-generated method stub
		System.out.println("��Ŭ������ ���ڸ����̳�...");
		System.out.println(getName()+"���� "+getMajor()+"����");
	}
}
