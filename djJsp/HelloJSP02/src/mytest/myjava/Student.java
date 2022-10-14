package mytest.myjava;

public class Student {

	private String name;
	private String pw;
	private String hobbys;
	private String major;
	private String protocol;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getHobbys() {
		return hobbys;
	}
	//수정 필요함
	public void setHobbys(String[] hobbys) {
		//this.hobbys = hobbys;
		this.hobbys = "";
		for(int i = 0; i<hobbys.length; i++) {
			switch(hobbys[i]) {
			case "cook":
				this.hobbys+="요리";
				break;
			case "run":
				this.hobbys+="달리기";
				break;
			case "swim":
				this.hobbys+="수영";
				break;
			case "sleep":
				this.hobbys+="잠자기";
				break;
			}
			if(i!=hobbys.length-1)//마지막인덱스아닐때
				this.hobbys+=",";
		}
	}
	
	public String getMajor() {
		return major;
	}

	//수정 필요함
	public void setMajor(String major) {
		//this.major = major;
		if(major.equals("eng"))
			this.major= "영어";
		else if(major.equals("math"))
			this.major= "수학";
		else if(major.equals("kor"))
			this.major= "국어";
		else
			this.major= major;
	}
	
	public String getProtocol() {
		return protocol;
	}
	public void setProtocol(String protocol) {
		this.protocol = protocol;
	}
	
}
