package javastudy05_answer;

//import javastudy04.Student;
//�ٸ� ��Ű���� ��쿡�� import�� �ϰų�
//��Ű����.Ŭ�����ϸ� ��

//���� ��Ű���ȿ��� Student �ְ�
//�ٸ� ��Ű�� �ȿ��� Student�� �ִ� ��,
//�ٸ� ��Ű�� �ȿ� �ִ� Student�� ����ϰ� ���� ��쿡�� ��
//��Ű����.Student�� �Ѵ�.
//�ٵ� �̷��� Ŭ�������� ��ġ�� ������� ȥ��������Ƿ� �̸��� �ǵ���
//��ġ�� �ʰ� �Ѵ�.
public class KBStudent extends javastudy04.Student{

	//name,age
	//setName, getName, setAge, getAge, study��
	//�̹� ������ �Ǿ� �ִ�.

	//KBStudent���� �ִ� �Ӽ���
	private String gender;
	private String education;//�з�
	
	//KBStudent���� �ִ� �޼ҵ��
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public void attend(String att) {
		//this.name�̶�� �� ���� getName���� ���ٵ�
		System.out.println(getName());
		System.out.println(getAge());
		System.out.println(gender);
		System.out.println(education);
		System.out.println(att+"!!!"); //�⼮ �Ἦ �� ����
	}
	
}








