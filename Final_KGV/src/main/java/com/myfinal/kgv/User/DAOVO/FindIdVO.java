package com.myfinal.kgv.User.DAOVO;

public class FindIdVO {

	private String inputName;
	private String inputTel;
	
	
	public FindIdVO() {
		super();
		
	}
	
	
	public FindIdVO(String inputName, String inputTel) {
		super();
		this.inputName = inputName;
		this.inputTel = inputTel;
	}
	
	
	public String getInputName() {
		return inputName;
	}
	public void setInputName(String inputName) {
		this.inputName = inputName;
	}
	public String getInputTel() {
		return inputTel;
	}
	public void setInputTel(String inputTel) {
		this.inputTel = inputTel;
	}
	
	
}
