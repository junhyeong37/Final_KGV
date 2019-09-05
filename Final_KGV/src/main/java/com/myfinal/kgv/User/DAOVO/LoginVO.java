package com.myfinal.kgv.User.DAOVO;



public class LoginVO {
	private String inputId;
	private String inputPw;
	
	public LoginVO() {
		super();
	}
	public LoginVO(String inputId, String inputPw) {
		super();
		this.inputId = inputId;
		this.inputPw = inputPw;
	}
	public String getInputId() {
		return inputId;
	}
	public void setInputId(String inputId) {
		this.inputId = inputId;
	}
	public String getInputPw() {
		return inputPw;
	}
	public void setInputPw(String inputPw) {
		this.inputPw = inputPw;
	}
	
	
	
}
