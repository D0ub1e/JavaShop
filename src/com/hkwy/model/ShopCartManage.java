package com.hkwy.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 购物车管理类
 * 放入具体的购物车对象
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
