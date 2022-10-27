package com.store.gdgd.order;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class OrderController {

	@RequestMapping(value = "order/paySuccess", method = RequestMethod.GET)
	public String insert() {
		return "order/paySuccess";
	}
}
