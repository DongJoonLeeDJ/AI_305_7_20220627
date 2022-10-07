package javastudy03;

public abstract class Teacher {
	private String Name;
	private String Major;
	
	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getMajor() {
		return Major;
	}

	public void setMajor(String major) {
		Major = major;
	}

	public abstract void Teach();
}
