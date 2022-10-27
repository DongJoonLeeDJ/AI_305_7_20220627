package com.store.gdgd;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.store.gdgd.member.MemberVO;
import com.store.gdgd.member.MemberService;
import com.store.gdgd.product.Product;

/**
 * Handles requests for the application home page.
 */

@Controller
public class MemberController {
	
	@Autowired
	SqlSessionTemplate sst;
	@Autowired
	MemberService ms;
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	

	@RequestMapping(value = "Member/login", method = RequestMethod.GET)
	public String Login(Locale locale, Model model) {
		HomeController.page = "Member/Login.jsp";
		return "Member/Login";
	}
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String member(Locale locale, Model model) {
		return "redirect:/Member/Signup";
	}
	@RequestMapping(value = "/signupaction", method = RequestMethod.POST)
	public String home(MemberVO m) {
		System.out.println("완료?");
		ms.signUp(m);
		return "redirect:/";
	}
	@RequestMapping(value = "Member/login2", method = RequestMethod.POST)
	public String login2(MemberVO m, Model model,HttpServletRequest request) {
		HomeController.page = "Member/Login2.jsp";
		System.out.println("완료?");
		MemberVO mvo = ms.Login(m.getId(),m.getPw());
		
	    HttpSession session = request.getSession();
	    session.setAttribute("member2", mvo);
		return "redirect:/";
	}
	@RequestMapping(value = "/idCheck", method = RequestMethod.GET)
	@ResponseBody
	public String idCheck(@RequestParam("id") String id) {
		System.out.println("아약스 체크");
		String result = ms.checkid(id)+"";
		System.out.println(result);
		return result;
	}
}
