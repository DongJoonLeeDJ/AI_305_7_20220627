package com.store.gdgd.product;

import java.util.List;
import java.util.Locale;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class ProductController {
	
	@Autowired
	ProductService ss;

	@Autowired
	SqlSessionTemplate sst;
	
	@RequestMapping(value = "/Product", method = RequestMethod.GET)
	public String Product(Locale locale, Model model) {
		System.out.println("Product");
		List<Product> list = sst.selectList("Product.selectProduct");
		model.addAttribute("list", list);
		model.addAttribute("page", "Product/Product");
		return "Product/Product";
	}
	
	@RequestMapping(value = "/shop-grid", method = RequestMethod.GET)
	public String Products(Locale locale, Model model) {
		System.out.println("Product");
		List<Product> list = sst.selectList("Product.selectProduct");
		model.addAttribute("list", list);
		model.addAttribute("page", "shop-grid");
		return "shop-grid";
	}
	
	//@RequestMapping(value = "/ProductSearch", method = RequestMethod.GET)
	//public String Productr(Locale locale, int sales_number,Model model) {
	//	System.out.println("ProductSearch");
//		List<Sales1> list = sst.selectList("Product.selectProductSearch",sales_number);
		//model.addAttribute("list", list);

	//	return "Product";
//	}
}
