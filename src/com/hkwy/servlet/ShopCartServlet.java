package com.hkwy.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hkwy.model.Product;
import com.hkwy.model.ShopCart;
import com.hkwy.model.ShopCartManage;
import com.hkwy.service.IProductService;
import com.hkwy.service.impl.ProductService;



public class ShopCartServlet extends BaseServlet {
	private static IProductService productService = new ProductService();
	public String buy(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		int num = Integer.parseInt(req.getParameter("buynum"));
		Product product = productService.load(id);
		ShopCart shopCart = new ShopCart(num, product);
		HttpSession session = req.getSession();
		ShopCartManage shopCartManage = (ShopCartManage)session.getAttribute("shopCartManage");
		List<ShopCart> shopCarts = null;
		if(shopCartManage == null) {
			shopCartManage = new ShopCartManage();
			shopCarts = new ArrayList<ShopCart>();
			shopCarts.add(shopCart);
		}
		else {
			//如果购物车不为空,取出购物车里的所有商品
			int i = 0;
			shopCarts = shopCartManage.getShopCarts();
			for(int j = 0;j < shopCarts.size();j++) {
				ShopCart cart = shopCarts.get(j);
				if(cart.getProduct().getId() == id) {
					i = j;
				}
			}
			
			if(i > 0) {
				ShopCart cart = shopCarts.get(i);
				cart.setNum(num + cart.getNum());
				shopCarts.add(i, cart);
			}
			//购物车里没有这个商品
			else {
				shopCarts.add(shopCart);
			}
		}
		shopCartManage.setShopCarts(shopCarts);
		session.setAttribute("shopCartManage", shopCartManage);//把购物车信息放入到session中
		return "WEB-INF/client/buy/addSuccess.jsp";
	}

}
