package user;

// Data Transfer Object = DVO 또는 VO
// Student 같은 객체들
// 데이터베이스에 전송하거나 전송될 객체
public class UserDTO {
	String userID;
	String userPassword;
	String name;
	String tel;
	String email;
	String birth;
	String reg_date;
	String rank;
	int loggin_count;
	int post_count;
	
	// 생성자 단축키 : alt + shift + s 누른 뒤 r
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email=email;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getRank() {
		return rank;
	}
	public void setRank(String rank) {
		this.rank=rank;
	}
	public int getLoggin_count() {
		return loggin_count;
	}
	public void setLoggin_count(int loggin_count) {
		this.loggin_count = loggin_count;
	}
	public int getPost_count() {
		return post_count;
	}
	public void setPost_count(int post_count) {
		this.post_count = post_count;
	}
	
}
