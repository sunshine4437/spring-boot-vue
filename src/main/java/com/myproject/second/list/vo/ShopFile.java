package com.myproject.second.list.vo;

public class ShopFile {
	private String title;
	private int price;
	private int rate;
	private int delivery;
	private String vendor;
	
	public ShopFile(String title, int price, int rate, int delivery, String vendor) {
		super();
		this.title = title;
		this.price = price;
		this.rate = rate;
		this.delivery = delivery;
		this.vendor = vendor;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getRate() {
		return rate;
	}

	public void setRate(int rate) {
		this.rate = rate;
	}

	public int getDelivery() {
		return delivery;
	}

	public void setDelivery(int delivery) {
		this.delivery = delivery;
	}

	public String getVendor() {
		return vendor;
	}

	public void setVendor(String vendor) {
		this.vendor = vendor;
	}
	
}
