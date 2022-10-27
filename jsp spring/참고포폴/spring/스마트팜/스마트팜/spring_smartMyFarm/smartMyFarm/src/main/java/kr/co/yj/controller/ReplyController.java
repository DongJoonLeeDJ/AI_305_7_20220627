package kr.co.yj.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.yj.service.ReplyService;
import kr.co.yj.vo.Board;
import kr.co.yj.vo.Reply;
import kr.co.yj.vo.SearchCriteria;

@Controller
@RequestMapping("/board/*")
public class ReplyController {
	private static final Logger logger= LoggerFactory.getLogger(ReplyController.class);
	
	@Inject
	ReplyService rservice;
	//댓글 작성
	@RequestMapping(value= "/replyWrite", method=RequestMethod.POST)//, method = {RequestMethod.GET, RequestMethod.POST}
	public String write(Reply reply, SearchCriteria scri, RedirectAttributes rttr) throws Exception{
		logger.info("reply write");
		rservice.write(reply);
		rttr.addAttribute("bno", reply.getBno());
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
		
		return "redirect:/board/readView";
	}
	
	//댓글 조회
	/*
	 * @RequestMapping(value="/readView", method = RequestMethod.GET) public String
	 * read(Reply reply,Model model) throws Exception{ logger.info("reply read");
	 * model.addAttribute("replyList",rservice.selectList(reply.getBno()));
	 * 
	 * return "board/readView"; }
	 */
}
