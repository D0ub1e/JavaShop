package com.hkwy.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItemIterator;
import org.apache.commons.fileupload.FileItemStream;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.util.Streams;

import com.hkwy.model.Category;
import com.hkwy.model.Page;
import com.hkwy.model.Product;
import com.hkwy.service.ICategoryService;
import com.hkwy.service.IProductService;
import com.hkwy.service.impl.CategoryService;
import com.hkwy.service.impl.ProductService;



public class ProductServlet extends BaseServlet {
	private static IProductService productService = new ProductService();
	private static ICategoryService categoryService = new CategoryService();
	public String addInput(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		List<Category> categories = categoryService.list();
		req.setAttribute("categories", categories);
		return "WEB-INF/jsp/product/add.jsp";	
	}
	
	public String upload(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//�ж��ύ�ı��Ƿ�����ļ�
		req.setCharacterEncoding("utf-8");
		boolean isMulipart = ServletFileUpload.isMultipartContent(req);
		InputStream is = null;
		FileOutputStream fos = null;
		try {
			if(isMulipart) {
				ServletFileUpload upload = new ServletFileUpload();
				//�������е���������ת��Ϊһ��������
				FileItemIterator iterator = upload.getItemIterator(req);
				while(iterator.hasNext()) {
					FileItemStream fis = iterator.next();
					is = fis.openStream();//��������
					//�ж��ǲ���һ����ͨ����
					if(fis.isFormField()) {//��ͨ��
						String formName = fis.getFieldName();//��ȡ����
						String formValue = Streams.asString(is, "utf-8");//��ȡ��ֵ
						//System.out.println(formName + "," + formValue);
						req.setAttribute(formName, formValue);
					}
					else {//�����ļ��ı�
						String formName = fis.getFieldName();//��ȡ��������
						//System.out.println(formName);
						String fileName = fis.getName();//��ȡ�ļ�������
						//System.out.println(fileName);
						req.setAttribute(formName, fileName);
						String path = getServletContext().getRealPath("/img");
						//path = path + "/" + fileName;//ֻ�ʺ�windowsϵͳ
						path = path + File.separatorChar + fileName;
						fos = new FileOutputStream(path);
						byte buf[] = new byte[1024];
						int len = 0;
						while((len = is.read(buf)) > 0) {
							fos.write(buf,0,len);
						}
					}
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			if(fos != null) {
				fos.close();
			}
			if(is != null) {
				is.close();
			}
		}
		return "product?method=add";
	}
	
	public String add(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String name = (String)req.getAttribute("name");
		double price = Double.parseDouble((String)req.getAttribute("price"));
		int num = Integer.parseInt((String)req.getAttribute("num"));
		String disc = (String)req.getAttribute("disc");
		double discount = Double.parseDouble((String)req.getAttribute("discount"));
		String img = (String)req.getAttribute("img");
		int cid = Integer.parseInt((String)req.getAttribute("category"));
		Product product = new Product(name, price, num, 0, disc, discount, img, 1);
		product.setCid(cid);
		productService.add(product);
		return "redirect:product?method=list";
	}
	
	public String list(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		Page<Product> pages = productService.pages();
		req.setAttribute("pages", pages);
		return "WEB-INF/jsp/product/list.jsp";
	}
	
	public String find(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String msg = req.getParameter("msg");
		List<Product> products = null;
		Category category = categoryService.loadByName(msg);
		if(category == null) {
			products = productService.loadByName(msg);
		}
		else {
			products = productService.loadByCategory(category.getId());
		}
		req.setAttribute("products", products);
		return "WEB-INF/client/index.jsp";
	}
	
	public String buy(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		Product product = productService.load(id);
		req.setAttribute("product", product);
		return "WEB-INF/client/buy.jsp";
	}

}
