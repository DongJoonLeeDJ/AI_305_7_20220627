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
	//���� �ʿ���
	public void setHobbys(String[] hobbys) {
		//this.hobbys = hobbys;
		this.hobbys = "";
		for(int i = 0; i<hobbys.length; i++) {
			switch(hobbys[i]) {
			case "cook":
				this.hobbys+="�丮";
				break;
			case "run":
				this.hobbys+="�޸���";
				break;
			case "swim":
				this.hobbys+="����";
				break;
			case "sleep":
				this.hobbys+="���ڱ�";
				break;
			}
			if(i!=hobbys.length-1)//�������ε����ƴҶ�
				this.hobbys+=",";
		}
	}
	
	public String getMajor() {
		return major;
	}

	//���� �ʿ���
	public void setMajor(String major) {
		//this.major = major;
		if(major.equals("eng"))
			this.major= "����";
		else if(major.equals("math"))
			this.major= "����";
		else if(major.equals("kor"))
			this.major= "����";
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
