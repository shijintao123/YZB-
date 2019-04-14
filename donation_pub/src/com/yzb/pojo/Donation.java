package com.yzb.pojo;

import java.util.Date;
//捐助表
public class Donation {
    private Integer did;

    private Integer id;

    private String title;

    private String content;

    private String picture;

    private Date pubdate;

    private Integer dcode;

    public Integer getDid() {
        return did;
    }

    public void setDid(Integer did) {
        this.did = did;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture == null ? null : picture.trim();
    }

    public Date getPubdate() {
        return pubdate;
    }

    public void setPubdate(Date pubdate) {
        this.pubdate = pubdate;
    }

    public Integer getDcode() {
        return dcode;
    }

    public void setDcode(Integer dcode) {
        this.dcode = dcode;
    }
}