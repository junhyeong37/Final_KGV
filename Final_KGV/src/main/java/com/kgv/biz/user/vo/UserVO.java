package com.kgv.biz.user.vo;

import java.sql.Date;

public class UserVO {
	

	private int User_no;
	private String User_id;
	private String User_pw;
	private String User_name;
	private String User_address;
	private String User_address1;
	private String User_address2;
	private String User_tel;
	private String User_email;
	private String User_email1;
	private String str_email02;
	private Date User_birth;
	private String User_level;
	private String User_sex;
	
	
	public UserVO(int user_no, String user_id, String user_pw, String user_name, String user_address,
			String user_address1, String user_address2, String user_tel, String user_email, String user_email1,
			String str_email02, Date user_birth, String user_level, String user_sex) {
		super();
		User_no = user_no;
		User_id = user_id;
		User_pw = user_pw;
		User_name = user_name;
		User_address = user_address;
		User_address1 = user_address1;
		User_address2 = user_address2;
		User_tel = user_tel;
		User_email = user_email;
		User_email1 = user_email1;
		this.str_email02 = str_email02;
		User_birth = user_birth;
		User_level = user_level;
		User_sex = user_sex;
	}
	
	public UserVO() {
		super();
	}
		
	public int getUser_no() {
		return User_no;
	}
	public void setUser_no(int user_no) {
		User_no = user_no;
	}
	public String getUser_id() {
		return User_id;
	}
	
	public void setUser_id(String user_id) {
		User_id = user_id;
	}
	public String getUser_pw() {
		return User_pw;
	}
	public void setUser_pw(String user_pw) {
		User_pw = user_pw;
	}
	public String getUser_name() {
		return User_name;
	}
	public void setUser_name(String user_name) {
		User_name = user_name;
	}
	public String getUser_address() {
		return User_address;
	}
	public void setUser_address(String user_address) {
		User_address = user_address;
	}
	public String getUser_tel() {
		return User_tel;
	}
	public void setUser_tel(String user_tel) {
		User_tel = user_tel;
	}
	public Date getUser_birth() {
		return User_birth;
	}
	public void setUser_birth(Date user_birth) {
		User_birth = user_birth;
	}
	public String getUser_level() {
		return User_level;
	}
	public void setUser_level(String user_level) {
		User_level = user_level;
	}
	public String getUser_sex() {
		return User_sex;
	}
	public void setUser_sex(String user_sex) {
		User_sex = user_sex;
	}
	public String getUser_email() {
		return User_email;
	}
	public void setUser_email(String user_email) {
		User_email = user_email;
	}
	public String getUser_address1() {
		return User_address1;
	}
	public void setUser_address1(String user_address1) {
		User_address1 = user_address1;
	}
	public String getUser_address2() {
		return User_address2;
	}
	public void setUser_address2(String user_address2) {
		User_address2 = user_address2;
	}
	public String getUser_email1() {
		return User_email1;
	}
	public void setUser_email1(String user_email1) {
		User_email1 = user_email1;
	}
	public String getStr_email02() {
		return str_email02;
	}
	public void setStr_email02(String str_email02) {
		this.str_email02 = str_email02;
	}
	
	
	

	

	

}
