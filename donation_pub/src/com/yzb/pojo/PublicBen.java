package com.yzb.pojo;

import java.util.Date;
//公益
public class PublicBen {
	
	private Integer pid;//公益表的ID
	
	private String title;//发布标题
	
	private Date pubDate;//发布日期
	
	private int id;//发布人Id;
	
	private String content;//公益内容
	
	private String pic;//页面展示图片 路径
	
	private Integer benCode;//状态码 是否被审核

	private String username;//封装类
	
	
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Integer getBenCode() {
		return benCode;
	}

	public void setBenCode(Integer benCode) {
		this.benCode = benCode;
	}

	public Integer getPid() {
		return pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getPubDate() {
		return pubDate;
	}

	public void setPubDate(Date pubDate) {
		this.pubDate = pubDate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	@Override
	public String toString() {
		return "PublicBen [pid=" + pid + ", title=" + title + ", pubDate="
				+ pubDate + ", id=" + id + ", content=" + content + ", pic="
				+ pic + ", benCode=" + benCode + "]";
	}

	
}
