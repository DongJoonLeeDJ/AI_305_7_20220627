package com.store.gdgd;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.store.gdgd.product.Product;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	static public String page = "main2.jsp";
	@Autowired
	SqlSessionTemplate sst;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		model.addAttribute("page", page);
	
		return "index";
	}
	
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(Locale locale, Model model,HttpServletRequest request) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		HttpSession http = request.getSession();
		http.invalidate();
		return "redirect:/";
	}
	/*
	 * @RequestMapping(value = "/shop-grid", method = RequestMethod.GET) public
	 * String shop_grid(Locale locale, Model model) {
	 * logger.info("Welcome shop-grid! The client locale is {}.", locale);
	 * 
	 * model.addAttribute("page", page);
	 * 
	 * return "shop-grid"; }
	 */
	
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String to_Home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		page = "main2.jsp";
		model.addAttribute("page", page);
		
		return "index";
	}
	

	@RequestMapping(value = "/checkout", method = RequestMethod.GET)
	public String checkout(Locale locale, Model model) {
		
		
		return "checkout";
	}

//	@RequestMapping(value = "/Product", method = RequestMethod.GET)
//	public String Product(Locale locale, Model model) {
//
//		
//		return "Product";
//	}
//	@RequestMapping(value = "/Product", method = RequestMethod.GET)
//	public String Product(Locale locale, Model model) {
//
//		
//		return "Product";
//	}
//	@RequestMapping(value = "/Product", method = RequestMethod.GET)
//	public String Product(Locale locale, Model model) {
//
//		
//		return "Product";
//	}
//	@RequestMapping(value = "/Product", method = RequestMethod.GET)
//	public String Product(Locale locale, Model model) {
//
//		
//		return "Product";
//	}
//	@RequestMapping(value = "/Product", method = RequestMethod.GET)
//	public String Product(Locale locale, Model model) {
//
//		
//		return "Product";
//	}
//	@RequestMapping(value = "/Product", method = RequestMethod.GET)
//	public String Product(Locale locale, Model model) {
//
//		
//		return "Product";
//	}
//	@RequestMapping(value = "/Product", method = RequestMethod.GET)
//	public String Product(Locale locale, Model model) {
//
//		
//		return "Product";
//	}
	
}
