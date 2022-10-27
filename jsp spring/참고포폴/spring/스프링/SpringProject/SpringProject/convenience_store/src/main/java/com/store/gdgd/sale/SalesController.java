package com.store.gdgd.sale;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class SalesController {
	@Autowired
	SalesService ss;

	@Autowired
	SqlSessionTemplate sst;

	
	@RequestMapping(value = "/Sale", method = RequestMethod.GET)
	public String Sale(Locale locale, Model model) {
		System.out.println("Sale");
		List<Sales1> list = sst.selectList("Sale.selectSales");
		System.out.println(list.get(1).getDate());
		model.addAttribute("list", list);

		return "Sale";
	}
	
	@RequestMapping(value = "/SaleByNumber", method = RequestMethod.GET)
	public String SaleByMember(Locale locale, int sales_number,Model model) {
		System.out.println("SaleByNumber");
		List<Sales1> list = sst.selectList("Sale.selectSalesByNumber",sales_number);
		System.out.println(list.get(0).getDate());
		model.addAttribute("list", list);

		return "Sale";
	}
	@RequestMapping(value = "/SaleByDate", method = RequestMethod.GET)
	public String SaleByDate(Locale locale, String time_select,Model model) {
		System.out.println("SaleByDate");
		List<Sales1> list = sst.selectList("Sale.selectSalesByDate",time_select);
		model.addAttribute("list", list);

		return "Sale";
	}
	@RequestMapping(value = "/SaleByWeek", method = RequestMethod.GET)
	public String SaleByWeek(Locale locale, String time_select,Model model) {
		System.out.println("SaleByWeek");
		time_select= time_select.replaceAll("-", "/");
		List<Sales1> list = sst.selectList("Sale.selectSalesByWeek",time_select);
		model.addAttribute("list", list);

		return "Sale";
	}
	@RequestMapping(value = "/SaleByMonth", method = RequestMethod.GET)
	public String SaleByMonth(Locale locale, String time_select,Model model) {
		System.out.println("SaleByMonth");
		time_select=time_select.substring(0, 7);
		List<Sales1> list = sst.selectList("Sale.selectSalesByMonth",time_select);
		model.addAttribute("list", list);

		return "Sale";
	}
	@RequestMapping(value = "/selectedPayment", method = RequestMethod.GET)
	public String SelectedSale(Locale locale, String sales_number,Model model) {
		List<Sales2> list = sst.selectList("Sale.selectedSales",sales_number);
		System.out.println(list.get(0).toString());
		model.addAttribute("list", list);

		return "selectedPayment";
	}
	
}
