package java_refer;

public class Dj_Test4 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		MyStudent s = new MyStudent();
		try {
			s.setAge(50);
			s.setAge(-50);
			s.setAge(50);
			System.out.println(s.getAge());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("---");
		
	}

}
