package my.hello.javastudy02;

public class Student {
	//name, age, score
	
	private String name;//�̸�
	private int age;//����
	private double score;//����
	//������
	//���� �Ӽ����̶� getter, setter�� �����ٸ�
	//�Ϲ������� �Ʒ��� ���� �ƹ� �͵� ���� �����ڰ�
	//�ڵ����� ������� ���̴�.
	public Student() {
		
	}
	
	
	//������
	public Student
	(String name, int age, double score) {
		this.name = name;
		this.age = age;
		this.score = score;
	}
	//�����ε�
	//�Լ��� �����ڿ��� �Ű������� ������ Ÿ���� �ٸ���
	//�̸��� �Ȱ��Ƶ� �ȴ�. �̸��� �Ȱ��Ƶ�
	//�ٸ� �ɷ� ������ش�.
	//1�� ����
	public Student(String name) {
		this.name = name;
	}


	
	//Getter Setter
	//2������

	//alt shift s ������ �� ���� r Ű ������
	//���콺 ������ Ŭ�� -> Source-> Generate Getter and Setter
	
	//select All ������ Generator ��������.
	
	public String getName() {
		return name;
	}
	//�����ε�!!!
	public String getName(String title) {
		return name+title;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
	}


	public double getScore() {
		return score;
	}


	public void setScore(double score) {
		this.score = score;
	}
	
	
	
	
	
	
}





