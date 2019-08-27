package com.myfinal.kgv.User.DAOVO;



public class UserVO {

	private int user_no;
	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_address;
	private String user_tel;
	private String user_birth;
	private String user_level;
	private String user_sex;
	private String user_email;
	
	public UserVO() {
		super();
	}


	public UserVO(int user_no, String user_id, String user_pw, String user_name, String user_address, String user_tel,
			String user_birth, String user_level, String user_sex, String user_email) {
		super();
		this.user_no = user_no;
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.user_address = user_address;
		this.user_tel = user_tel;
		this.user_birth = user_birth;
		this.user_level = user_level;
		this.user_sex = user_sex;
		this.user_email = user_email;
	}
	
	
	public UserVO(String user_id, String user_pw, String user_name, String user_address, String user_tel,
			String user_birth, String user_level, String user_sex, String user_email) {

		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.user_address = user_address;
		this.user_tel = user_tel;
		this.user_birth = user_birth;
		this.user_level = user_level;
		this.user_sex = user_sex;
		this.user_email = user_email;
	}
	
	

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_address() {
		return user_address;
	}

	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}

	public String getUser_tel() {
		return user_tel;
	}

	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}

	public String getUser_birth() {
		return user_birth;
	}

	public void setUser_birth(String user_birth) {
		this.user_birth = user_birth;
	}

	public String getUser_level() {
		return user_level;
	}

	public void setUser_level(String user_level) {
		this.user_level = user_level;
	}

	public String getUser_sex() {
		return user_sex;
	}

	public void setUser_sex(String user_sex) {
		this.user_sex = user_sex;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	
	
}
