package com.store.gdgd.basket;

import java.util.Locale;
import java.util.List;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.store.gdgd.HomeController;

@Controller
public class BasketController {

	@Autowired
	SqlSessionTemplate sst;
	@Autowired
	BasketService bse;

	@RequestMapping(value = "/shoping-cart", method = RequestMethod.GET)
	public String Login(Locale locale, Model model,HttpSession session) {
//		String userid = (String) session.getAttribute("userid");
//		if (userid == null) {
//
//			// 로그인하지 않은 상태이면 로그인 화면으로 이동
//
//			return "redirect:/Member/login";
//		}
		List<BasketVO> list = sst.selectList("BasketSQL.select");
		model.addAttribute("list", list);
		model.addAttribute("page", "shoping-cart");
		return "/shoping-cart";
	}

	@RequestMapping(value = "/insertBasket", method = RequestMethod.GET)
	@ResponseBody
	public String insert(@ModelAttribute BasketVO vo, HttpSession session) {
		System.out.println(vo);
		// 장바구니 DB에 추가
		bse.insert(vo);

		return "suc";
	}

	/*
	 * @RequestMapping(value = "/selectBasket", method = RequestMethod.GET)
	 * 
	 * public String select(Locale locale, Model model, HttpSession session) {
	 * 
	 * // 로그인 여부를 체크하기 위해 세션에 저장된 아이디 확인
	 * 
	 * String userid = (String) session.getAttribute("userid"); if (userid == null)
	 * {
	 * 
	 * // 로그인하지 않은 상태이면 로그인 화면으로 이동
	 * 
	 * return "redirect:/member/login"; } List<BasketVO> list =
	 * sst.selectList("BasketSQL.select"); model.addAttribute("list", list);
	 * model.addAttribute("page", "shoping-cart"); return "redirect:/shoping-cart";
	 * // 장바구니 목록으로 이동 }
	 * 
	 * }
	 */
}
