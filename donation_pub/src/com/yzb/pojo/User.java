package com.yzb.pojo;

public class User {
	private int id;
	private String sid;//学号
	private String username;//姓名
	private String password;
	private String college;//学院
	private String sclass;//班级
	private String polstatus;//政治面貌
	private String tel;//电话
	private String resdate;//注册时间
	private int code;//状态码 1代表管理员 0代表非管理员
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getSclass() {
		return sclass;
	}
	public void setSclass(String sclass) {
		this.sclass = sclass;
	}
	public String getPolstatus() {
		return polstatus;
	}
	public void setPolstatus(String polstatus) {
		this.polstatus = polstatus;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getResdate() {
		return resdate;
	}
	public void setResdate(String resdate) {
		this.resdate = resdate;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", sid=" + sid + ", username=" + username
				+ ", password=" + password + ", college=" + college
				+ ", sclass=" + sclass + ", polstatus=" + polstatus + ", tel="
				+ tel + ", resdate=" + resdate + ", code=" + code + "]";
	}
	
}
