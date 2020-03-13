package SIMS.Entity;

public class User {

	private String name;
	private String mail;
	private String password;
	private byte sex;
	private byte isDelete;
	public User(String name, String mail, String password, byte sex, byte isDelete) {
		super();
		this.name = name;
		this.mail = mail;
		this.password = password;
		this.sex = sex;
		this.isDelete = isDelete;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public byte getSex() {
		return sex;
	}
	public void setSex(byte sex) {
		this.sex = sex;
	}
	public byte getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(byte isDelete) {
		this.isDelete = isDelete;
	}
	@Override
	public String toString() {
		return "User [name=" + name + ", mail=" + mail + ", password=" + password + ", sex=" + sex
				+ ", isDelete=" + isDelete + "]";
	}
	
	
	
	
	
	
	
}
