package com.javalec.ex;

public class Mt {
	private String name;
	private String id;
	private String pw;
	private String phone2;
	private String phone3;
	
	public Mt(String name, String id, String pw, String phone2, String phone3) {
		super();
		this.name = name;
		this.id = id;
		this.pw = pw;
		this.phone2 = phone2;
		this.phone3 = phone3;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getPhone2() {
		return phone2;
	}

	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}

	public String getPhone3() {
		return phone3;
	}

	public void setPhone3(String phone3) {
		this.phone3 = phone3;
	}
	
}
