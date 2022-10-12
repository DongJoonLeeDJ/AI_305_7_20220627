package javastudy02;

public class Worker {
	private String Name; //이름
	private String cNum; //사번
	//alt shift s 누르고 o 키 누르기 그 다음에 generate
	public Worker(String name, String cNum) {
		super();
		Name = name;
		this.cNum = cNum;
	}
	@Override
	public String toString() {
		return "이름 : "+Name+", 사번 : " + cNum;
	}
	//equals를 재정의해놔서 사번과 이름이 같은 사원은 같은 사원으로 간주함
	@Override
	public boolean equals(Object obj) {
		Worker w = (Worker)obj; //w랑 obj는 같은 곳을 가리킴
		return w.getcNum().equals(cNum) 
				&& w.getName().equals(Name);
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getcNum() {
		return cNum;
	}
	public void setcNum(String cNum) {
		this.cNum = cNum;
	}
	
	
}









