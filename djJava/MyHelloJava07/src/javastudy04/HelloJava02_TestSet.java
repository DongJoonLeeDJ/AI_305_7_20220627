package javastudy04;

import java.util.HashSet;
import java.util.Set;

public class HelloJava02_TestSet {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//HashSet을 객체에서 쓰려면 hashCode 뿐 아니라 equals 메소드도
		//오버라이딩을 해줘야 함
		Set<Employee> employees = new HashSet<Employee>();
		employees.add(new Employee("안서준", "001"));
		employees.add(new Employee("안서준", "001"));
		employees.add(new Employee("이현민", "002"));
		for (Employee employee : employees) {
			System.out.println(employee.getName());
			System.out.println(employee.getSabeon());
		}
	}

}










