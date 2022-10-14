package mytest.myjava;

public class Customer {
	private String name;
	private int age;
	private String id;
	//alt shift s 누르고 o 키
	public Customer(String name, int age, String id) {
		this.name = name;
		this.age = age;
		this.id = id;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "이름:"+name+",나이:"+age+",id="+id;
	}
	//나이가 limit 미만이면 false, limit 이상이면 true
	//지금은 20세가 성인의 기준이지만 추후에 바뀔 것을 고려
	public boolean isAdult(int limit) {
		if(limit>age)
			return false;
		else
			return true;
	}
	
}
