package javastudy03;

//KyungBook
public class KBCustomer {
	
	//private 이 붙으면
	//다른 클래스에서 (다른 파일에서)
	//읽거나 쓰지 못함
	
	//public, private : 정보의 은닉
	//(c#책에선 캡슐화라고 되어 있는 데, 캡슐은 아님)
	//캡슐에 대한 정의는 java책 찾아보기
	private int age;
	private String name;
	private String cNum;
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getcNum() {
		return cNum;
	}
	public void setcNum(String cNum) {
		this.cNum = cNum;
	}

	
//	public void setAge(int n)
//	{
//		if(n<0)
//			age = 0;
//		else
//			age = n;
//	}
//	
//	public String getName()
//	{
//		return name;
//	}
	
	//alt shift s 키 누르기
	//그 다음 r 키 누르기
	//Select All 누르고
	//Generate 누르기
	

}





