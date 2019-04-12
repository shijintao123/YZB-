package com.yzb.pojo;

public class SignUp {
	//报名活动
	private int id;
	private String acttitle;//注：仅在查询报名活动中同时也是捐助的标题
	private String sid;//学号
	private String username;//用户名
	private String college;//专业
	private String sclass;//班级
	private String polstatus;//政治面貌
	private String tel;//电话
	private String enrolldate;//报名时间
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getActtitle() {
		return acttitle;
	}
	public void setActtitle(String acttitle) {
		this.acttitle = acttitle;
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
	public String getEnrolldate() {
		return enrolldate;
	}
	public void setEnrolldate(String enrolldate) {
		this.enrolldate = enrolldate;
	}
}
