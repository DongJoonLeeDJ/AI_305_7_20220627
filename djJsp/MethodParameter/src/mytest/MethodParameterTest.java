package mytest;

public class MethodParameterTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		DaoTest d = new DaoTest();
		Member m = new Member();
		m.setName("�̹���");
		m.setAge(30);
		m.setScore(100);
		int b = 1000;
		
		//test1�� b�� "��"�� �ѱ�
		//�׷��� test1�� a�� Main�� b�� ���� ���� ���� ������ ����
		d.test1(b);
		
		System.out.println(b); // 1000? 1001?
		
		//Ŭ������ �̿��ؼ� ���� ������ ��� ��������
		//C������ �����Ͷ� ���� ����(C++������ ��������)
		//������� ��... �޸𸮿� �̹� �����ϴ� ���� ��ġ��� ���� ��
		//test2�� Main�� �ִ� m���� "��ġ"�� �˷����
		//�׷��� ���� �ٲ�� �Ŵ�.
		d.test2(m);
		System.out.println(m.getScore()); // 0? 100?
		
		//�������������̶� �׷���. m2�� m�� "��ġ"�� ���´�.
		//ArrayList�� �迭������ �Ȱ��� �����
		Member m2 = m;
		m2.setAge(12); //�׷��� m2 �ٲ�� m�� �ٲ�
		System.out.println(m.getAge());
		System.out.println(m2.getAge());
		
		//���� ������ ��.
		int aa = b;
		aa = 10;
		System.out.println(aa); //10
		System.out.println(b); //1000
		
		
		Member m3 = new Member();
		m3.setAge(34);
		//new Member�� ���� ������� �޸��� ��ġ�� m3
		//�� �޸��� ��ġ�� �����ְ�, test1������ �� �༮��
		//���� �ٲ�(age��)
		d.test1(m3);
		System.out.println(m3.getAge()); //main������
		//�ٲ� ��µȴ�.
		
		
		
	}

}
