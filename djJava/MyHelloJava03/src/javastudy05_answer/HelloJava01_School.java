package javastudy05_answer;

public class HelloJava01_School {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//다른 폴더(=패키지)안의 Student이다.
		javastudy04.Student s1 = new 
				javastudy04.Student();
		s1.setAge(25);
		s1.setName("김성환");
		s1.study();
		//같은 폴더 안의 Student
		Student ss = new Student();
		ss.level=34;
		
		KBStudent kb1 = new KBStudent();
		kb1.setName("김혜민");
		kb1.setAge(40);
		kb1.setEducation("대졸");
		kb1.setGender("여성");
		kb1.study();
		kb1.attend("입실");
		kb1.attend("퇴실");
	}

}







