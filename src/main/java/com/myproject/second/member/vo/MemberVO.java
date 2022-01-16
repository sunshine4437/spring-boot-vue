package com.myproject.second.member.vo;

public class MemberVO {
	private String id;
	private String nickname;
	private String password;
	private String name;
	private String tel;
	private String zipcode;
	private String address;
	private String detailaddr;
	private String email;
	private String birth;
	private String genger;
	private int point;
	private String seller;
	private String companyno;

	public MemberVO() {
	}

	public MemberVO(String id, String nickname, String password, String name, String tel, String zipcode,
			String address, String detailaddr, String email, String birth, String genger, int point, String seller,
			String companyno) {
		super();
		this.id = id;
		this.nickname = nickname;
		this.password = password;
		this.name = name;
		this.tel = tel;
		this.zipcode = zipcode;
		this.address = address;
		this.detailaddr = detailaddr;
		this.email = email;
		this.birth = birth;
		this.genger = genger;
		this.point = point;
		this.seller = seller;
		this.companyno = companyno;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDetailaddr() {
		return detailaddr;
	}

	public void setDetailaddr(String detailaddr) {
		this.detailaddr = detailaddr;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getGenger() {
		return genger;
	}

	public void setGenger(String genger) {
		this.genger = genger;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public String getSeller() {
		return seller;
	}

	public void setSeller(String seller) {
		this.seller = seller;
	}

	public String getCompanyno() {
		return companyno;
	}

	public void setCompanyno(String companyno) {
		this.companyno = companyno;
	}

}
//
//id         VARCHAR2(20) PRIMARY KEY,
//nickname   VARCHAR2(20) NOT NULL,
//password   VARCHAR2(30) NOT NULL,
//name       VARCHAR2(10) NOT NULL,
//tel        VARCHAR2(11) NOT NULL,
//zipcode    VARCHAR2(5) NOT NULL,
//address    VARCHAR2(80) NOT NULL,
//detailaddr VARCHAR2(50) NOT NULL,
//email      VARCHAR2(30),
//birth      VARCHAR2(10),
//gender     CHAR(1),
//point      NUMBER(10) DEFAULT 0,
//seller     CHAR(1) DEFAULT 0,    
//companyNO varchar2(20)