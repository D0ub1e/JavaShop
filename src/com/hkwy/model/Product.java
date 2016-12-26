package com.hkwy.model;

public class Product {
	private int id;
	private String name;
	private double price;//�۸�
	private int num;//���
	private int total;//����
	private String disc;//����
	private double discount;//�ۿ�
	private String img;//ͼƬ
	private int status;//��Ʒ״̬:1��ʾ�ϼ�,2��ʾ�¼�
	private int cid;//���
	public Product() {
		
	}

	public Product(String name, double price, int num, int total, String disc,
			double discount, String img, int status) {
		this.name = name;
		this.price = price;
		this.num = num;
		this.total = total;
		this.disc = disc;
		this.discount = discount;
		this.img = img;
		this.status = status;
	}

	public Product(int id, String name, double price, int num, int total,
			String disc, double discount, String img, int status) {
		this.id = id;
		this.name = name;
		this.price = price;
		this.num = num;
		this.total = total;
		this.disc = disc;
		this.discount = discount;
		this.img = img;
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public String getDisc() {
		return disc;
	}

	public void setDisc(String disc) {
		this.disc = disc;
	}

	public double getDiscount() {
		return discount;
	}

	public void setDiscount(double discount) {
		this.discount = discount;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", price=" + price
				+ ", num=" + num + ", total=" + total + ", disc=" + disc
				+ ", discount=" + discount + ", img=" + img + "]";
	}
	
	

}
