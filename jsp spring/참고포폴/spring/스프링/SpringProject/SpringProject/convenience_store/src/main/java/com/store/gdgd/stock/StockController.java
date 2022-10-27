package com.store.gdgd.stock;

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
public class StockController {
	
	@Autowired
	StockService ss;

	@Autowired
	SqlSessionTemplate sst;
	
	@RequestMapping(value = "/Stock", method = RequestMethod.GET)
	public String Stock(Locale locale, Model model) {
		System.out.println("Product");
		List<Stock> list = sst.selectList("Stock.selectStock");
		model.addAttribute("list", list);
		model.addAttribute("page", "Stock/Stock");
		return "Stock/Stock";
	}

	
	//@RequestMapping(value = "/ProductSearch", method = RequestMethod.GET)
	//public String Productr(Locale locale, int sales_number,Model model) {
	//	System.out.println("ProductSearch");
//		List<Sales1> list = sst.selectList("Product.selectProductSearch",sales_number);
		//model.addAttribute("list", list);

	//	return "Product";
//	}
}
