package javastudy04;

public class HelloJava01_check {
	public static void main(String[] args) {
		// StudentŬ������ UnivStudent�� �� ����ߴ��� üũ
		Student s1 = new Student();
		UniversityStudent u1 = new UniversityStudent();
		UnivStudent us1 = new UnivStudent();

		s1.setAge(10);
		s1.setName("��ο�");

		u1.setAge(20);
		u1.setName("������");
		u1.setHakbeon("001");

		us1.setAge(30); // UnivStudent Ŭ���� �ȿ�
		us1.setName("������"); // age, name�� ����.
		us1.setHakbeon("002");// Student�� ��ӹ޾Ƽ� �ִ� ���̴�.

	}
}
