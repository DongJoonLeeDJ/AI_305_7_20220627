package mytest;

public class DaoTest {

	public void test1(int a) {
		a++;
		//return a;
	}
	public void test1(Member m) {
		m.setAge(m.getAge()+1);
		//return a;
	}
	public void test2(Member m) {
		m.setAge(0);
		m.setName("");
		m.setScore(0);
		//return m;
	}
}
