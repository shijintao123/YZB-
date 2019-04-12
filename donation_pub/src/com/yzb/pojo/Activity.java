package com.yzb.pojo;

public class Activity {
	//活动  只有管理员才能发
	private int id;
	private String pubdate;
	private String content;
	private String picture;
	private String title;
	private String activitydate;
	private String pubusername;
	private String tel;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPubdate() {
		return pubdate;
	}
	public void setPubdate(String pubdate) {
		this.pubdate = pubdate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getActivitydate() {
		return activitydate;
	}
	public void setActivitydate(String activitydate) {
		this.activitydate = activitydate;
	}
	public String getPubusername() {
		return pubusername;
	}
	public void setPubusername(String pubusername) {
		this.pubusername = pubusername;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
}
