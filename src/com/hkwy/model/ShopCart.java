package com.hkwy.model;

public class ShopCart {
	private int num;//��Ʒ����
	private Product product;//�������Ʒ
	
	public ShopCart() {
		
	}
	

	public ShopCart(int num, Product product) {
		super();
		this.num = num;
		this.product = product;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}


	public Product getProduct() {
		return product;
	}


	public void setProduct(Product product) {
		this.product = product;
	}
	
	

}
