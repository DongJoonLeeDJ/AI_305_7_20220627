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
//			// �α������� ���� �����̸� �α��� ȭ������ �̵�
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
		// ��ٱ��� DB�� �߰�
		bse.insert(vo);

		return "suc";
	}

	/*
	 * @RequestMapping(value = "/selectBasket", method = RequestMethod.GET)
	 * 
	 * public String select(Locale locale, Model model, HttpSession session) {
	 * 
	 * // �α��� ���θ� üũ�ϱ� ���� ���ǿ� ����� ���̵� Ȯ��
	 * 
	 * String userid = (String) session.getAttribute("userid"); if (userid == null)
	 * {
	 * 
	 * // �α������� ���� �����̸� �α��� ȭ������ �̵�
	 * 
	 * return "redirect:/member/login"; } List<BasketVO> list =
	 * sst.selectList("BasketSQL.select"); model.addAttribute("list", list);
	 * model.addAttribute("page", "shoping-cart"); return "redirect:/shoping-cart";
	 * // ��ٱ��� ������� �̵� }
	 * 
	 * }
	 */
}
