package javastudy02;

public class HelloJava01_useToString {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Student s = new Student("�̵���",34);
		System.out.println(s.getAge());
		System.out.println(s.getName());
		System.out.println(s); //�����Ϸ����� �ڵ����� toString ����
		System.out.println(s.toString());
		//javastudy02.Student@15db9742
		//Object Ŭ������ ���� ���ǵǾ� �ִ� �޼ҵ�
		//getClass().getName() + '@' + Integer.toHexString(hashCode())
		//��Ű����.Ŭ������@�����ڵ�
		//���� s�� ���� �޸� ���� ���� �ڵ�
		Student s2 = new Student("�̵���",34);
		System.out.println(s2);
	}

}
