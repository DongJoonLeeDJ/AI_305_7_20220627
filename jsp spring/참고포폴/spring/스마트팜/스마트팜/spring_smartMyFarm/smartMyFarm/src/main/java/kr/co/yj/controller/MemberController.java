package kr.co.yj.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.yj.service.BoardService;
import kr.co.yj.service.MemberService;
import kr.co.yj.vo.Board;
import kr.co.yj.vo.Member;

@Controller
@RequestMapping("/Member/*")
public class MemberController {
	@Inject
	private MemberService mservice;
	@Inject
	BCryptPasswordEncoder pwEncoder;// 암호화 기능

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	// 홈 로그인
	@RequestMapping(value = "/login",method = RequestMethod.POST)
	public String login(Member member, HttpServletRequest req, RedirectAttributes rttr) throws Exception{
		logger.info("post login");
		/*
		 * session.getAttribute("member"); Member login = mservice.login(member);
		 * boolean pwdMatch = pwEncoder.matches(member.getPw(), login.getPw()); if(login
		 * != null && pwdMatch == true) { session.setAttribute("member", login); } else
		 * { session.setAttribute("member", null); rttr.addFlashAttribute("msg", false);
		 * }
		 */
		HttpSession session = req.getSession();
		Member login = mservice.login(member);
		
		if(login == null) {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
			//view="Member/login";
		}else {
			session.setAttribute("member", login);
			req.setAttribute("member", login);
			//view="redirect:/";
		}
		
		return "redirect:/";
	}

	// 로그인 안될시 로그인 창 이동
	@RequestMapping(value = "/loginView", method = RequestMethod.GET)
	public String loginView(Member member, HttpServletRequest req, Model model) throws Exception {
		logger.info("loginView");
		HttpSession session = req.getSession();
		Member login = mservice.login(member);

		if (login == null) {
			session.setAttribute("member", null);
			// view="Member/login";
		} else {
			session.setAttribute("member", login);
			req.setAttribute("member", login);
			// view="redirect:/";
		}
		/*
		 * String id= req.getParameter("id"); String pw=req.getParameter("pw");
		 * if(id==null || pw==null) { return "Member/loginView"; }else {
		 * model.addAttribute("id", id); model.addAttribute("pw", pw); }
		 */
		return "Member/loginView";
	}

	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {

		session.invalidate();

		return "redirect:/";
	}

	// 회원가입 get
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signupView() throws Exception {
		logger.info("get signup");
		return "Member/signup";
	}

	// 아이디체크
	@ResponseBody
	@RequestMapping(value = "/idChk", method = RequestMethod.POST)
	public int idChk(Member member) throws Exception {
		int result = mservice.idChk(member); // 일치하다면 result = 1
		return result;
	}

	// 회원가입 post
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signup(Member member) throws Exception {
		logger.info("Member signup");
		int result = mservice.idChk(member);
		try {
			if (result == 1) {
				return "Member/signup"; // 입력된 아이디가 존재하다면 다시 회원가입 창으로 이동
			} else if (result == 0) {
				mservice.memberInsert(member);// 존재하지 않는다면 회원가입
			}
		} catch (Exception e) {
			throw new RuntimeException();
		}
		return "redirect:/";
	}

	// 회원정보 수정
	@RequestMapping(value = "/memberUpdateView", method = RequestMethod.GET)
	public String memberUpdateView(Model model, HttpServletRequest req) throws Exception {
		HttpSession session = req.getSession();
		Member member = (Member) session.getAttribute("member");
		model.addAttribute("member", member);
		return "Member/memberUpdateView";
	}

	@RequestMapping(value = "/memberUpdate", method = RequestMethod.POST)
	public String memberUpdate(Member member, HttpSession session) throws Exception {

		mservice.memberUpdate(member);
		session.invalidate();

		return "redirect:/";
	}

	// 회원 탈퇴 get
	@RequestMapping(value = "/memberDeleteView", method = RequestMethod.GET)
	public String memberDeleteView() throws Exception {
		return "Member/memberDeleteView";
	}

	// 회원 탈퇴 post
	@RequestMapping(value = "/memberDelete", method = RequestMethod.POST)
	public String memberDelete(Member vo, HttpSession session, RedirectAttributes rttr) throws Exception {

		/*
		 * // 세션에 있는 member를 가져와 member변수에 넣어줍니다. Member member = (Member)
		 * session.getAttribute("member"); // 세션에있는 비밀번호 String sessionPass =
		 * member.getPw(); // vo로 들어오는 비밀번호 String voPass = vo.getPw();
		 * 
		 * if(!(sessionPass.equals(voPass))) { rttr.addFlashAttribute("msg", false);
		 * return "redirect:/member/memberDeleteView"; }
		 */
		mservice.memberDelete(vo);
		session.invalidate();
		return "redirect:/";
	}

	// 패스워드 체크
	@ResponseBody
	@RequestMapping(value = "/pwChk", method = RequestMethod.POST)
	public int pwChk(Member member) throws Exception {
		int result = mservice.pwChk(member);
		return result;// 일치하다면 result = 1
		 
	}

}