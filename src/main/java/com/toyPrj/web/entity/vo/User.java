package com.toyPrj.web.entity.vo;

import java.sql.Date;

public class User
{
	
	private int num;
	private String id;
	private String pw;
	private String email;
	private String name;
	private String phone;
	private String carrier;
	private Date birth;
	private boolean gender;
	private String address;
	private int zip;
	private String profileImg;
	private String comment;
	private Date regDate;
	private Date updates;
	
	public User() {}
	
	public User(int num, String id, String pw, String email, String name, String phone, String carrier, Date birth,
			boolean gender, String address, int zip, String profileImg, String comment, Date regDate, Date updates) {
		super();
		this.num = num;
		this.id = id;
		this.pw = pw;
		this.email = email;
		this.name = name;
		this.phone = phone;
		this.carrier = carrier;
		this.birth = birth;
		this.gender = gender;
		this.address = address;
		this.zip = zip;
		this.profileImg = profileImg;
		this.comment = comment;
		this.regDate = regDate;
		this.updates = updates;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public boolean isGender() {
		return gender;
	}

	public void setGender(boolean gender) {
		this.gender = gender;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getZip() {
		return zip;
	}

	public void setZip(int zip) {
		this.zip = zip;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getProfileImg() {
		return profileImg;
	}

	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public Date getUpdates() {
		return updates;
	}

	public void setUpdates(Date updates) {
		this.updates = updates;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getCarrier() {
		return carrier;
	}

	public void setCarrier(String carrier) {
		this.carrier = carrier;
	}
	
}
