package com.hkwy.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * ���ﳵ������
 * �������Ĺ��ﳵ����
 * @author Administrator
 *
 */
public class ShopCartManage {
	private  List<ShopCart> shopCarts = new ArrayList<ShopCart>();

	public void add(ShopCart shopCart) {
		shopCarts.add(shopCart);
	}
	public List<ShopCart> getShopCarts() {
		return shopCarts;
	}

	public void setShopCarts(List<ShopCart> shopCarts) {
		this.shopCarts = shopCarts;
	}
	
	

}
