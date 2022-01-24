package com.myproject.second.order.vo;

import java.sql.Date;

public class OrderVO {
	private long orderidx;
	private String id;
	private int productno;
	private String selectedoption;
	private int totalprice;
	private Date orderdate;
	private String state;
	private String ordermethod;
	private String dname;
	private String dtel;
	private String dzipcode;
	private String daddress;
	private String ddetailaddr;

	public OrderVO() {
	}

	public OrderVO(long orderidx, String id, int productno, String selectedoption, int totalprice, Date orderdate,
			String state, String ordermethod, String dname, String dtel, String dzipcode, String daddress,
			String ddetailaddr) {
		super();
		this.orderidx = orderidx;
		this.id = id;
		this.productno = productno;
		this.selectedoption = selectedoption;
		this.totalprice = totalprice;
		this.orderdate = orderdate;
		this.state = state;
		this.ordermethod = ordermethod;
		this.dname = dname;
		this.dtel = dtel;
		this.dzipcode = dzipcode;
		this.daddress = daddress;
		this.ddetailaddr = ddetailaddr;
	}

	public long getOrderidx() {
		return orderidx;
	}

	public void setOrderidx(long orderidx) {
		this.orderidx = orderidx;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getProductno() {
		return productno;
	}

	public void setProductno(int productno) {
		this.productno = productno;
	}

	public String getSelectedoption() {
		return selectedoption;
	}

	public void setSelectedoption(String selectedoption) {
		this.selectedoption = selectedoption;
	}

	public int getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(int totalprice) {
		this.totalprice = totalprice;
	}

	public Date getOrderdate() {
		return orderdate;
	}

	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getOrdermethod() {
		return ordermethod;
	}

	public void setOrdermethod(String ordermethod) {
		this.ordermethod = ordermethod;
	}

	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public String getDtel() {
		return dtel;
	}

	public void setDtel(String dtel) {
		this.dtel = dtel;
	}

	public String getDzipcode() {
		return dzipcode;
	}

	public void setDzipcode(String dzipcode) {
		this.dzipcode = dzipcode;
	}

	public String getDaddress() {
		return daddress;
	}

	public void setDaddress(String daddress) {
		this.daddress = daddress;
	}

	public String getDdetailaddr() {
		return ddetailaddr;
	}

	public void setDdetailaddr(String ddetailaddr) {
		this.ddetailaddr = ddetailaddr;
	}

}