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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.yj.service.ReplyService;
import kr.co.yj.service.TomatoService;
import kr.co.yj.vo.Criteria;
import kr.co.yj.vo.PageMaker;
import kr.co.yj.vo.Reply;
import kr.co.yj.vo.SearchCriteria;
import kr.co.yj.vo.Tomato;


@Controller
@RequestMapping("/tomato/*")
public class TomatoController {
	private static final Logger logger= LoggerFactory.getLogger(TomatoController.class);
	
	@Inject
	TomatoService tservice;
	@Inject
	ReplyService rservice;
	@RequestMapping(value="/writeView", method = RequestMethod.GET)
	public void writeView() throws Exception{
		logger.info("writeView");
	}
	//게시판 글 작성
	@RequestMapping(value= "/write")//, method = {RequestMethod.GET, RequestMethod.POST}
	public String write(Tomato tomato,MultipartHttpServletRequest mpRequest) throws Exception{
		logger.info("write");
		tservice.write(tomato,mpRequest);
		return "redirect:/tomato/list";
	}
	
	//게시판 목록 조회
	@RequestMapping(value = "/list" , method = RequestMethod.GET)
	public String selectList(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception{
		//@ModelAttribute는 사용자가 요청시 전달하는 값을 객체(Object)형태로 매핑해주는 어노테이션
		logger.info("selectList");
		model.addAttribute("list", tservice.selectList(scri));
		
		PageMaker page = new PageMaker();
		page.setCri(scri);
		page.setTotalCount(tservice.listCount(scri));
		model.addAttribute("page", page);
		return "tomato/list";
	}
	//게시물 조회
	@RequestMapping(value="/readView", method = RequestMethod.GET)
	public String read(Tomato tomato ,Reply reply,@ModelAttribute("scri") SearchCriteria scri,Model model) throws Exception{
		logger.info("read");
		model.addAttribute("read",tservice.read(tomato.getNo()));
		//model.addAttribute("replyList",rservice.selectReplyList(reply.getBno()));
		model.addAttribute("scri",scri);
		return "tomato/readView";
	}
	//게시글 수정 작성
	@RequestMapping(value="/updateView",method = RequestMethod.GET)
	public String updateView(Tomato tomato,@ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception{
		logger.info("updateView");
		model.addAttribute("update", tservice.read(tomato.getNo()));
		model.addAttribute("scri",scri);
		return "tomato/updateView";
	}
	//게시글 수정
	@RequestMapping(value="/update", method = RequestMethod.POST)
	public String update(Tomato tomato,@ModelAttribute("scri") SearchCriteria scri,RedirectAttributes rttr) throws Exception{
		logger.info("update");

		//model.addAttribute("read", bservice.read(board.getBno()));
		tservice.update(tomato);
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
		return "redirect:/tomato/list";//
	}
	//게시글 삭제
	@RequestMapping(value="/delete")//, method = RequestMethod.POST
	public String delete(Tomato tomato) throws Exception{
		logger.info("delete");
		tservice.delete(tomato.getNo());
		return "redirect:/tomato/list";
	}
	//댓글 수정 GET
		@RequestMapping(value="/replyUpdateView", method = RequestMethod.GET)
		public String replyUpdateView(Reply reply, SearchCriteria scri, Model model) throws Exception {
			logger.info("reply Write");
			
			model.addAttribute("replyUpdate", rservice.selectReply(reply.getRno()));
			model.addAttribute("scri", scri);
			
			return "tomato/replyUpdateView";
		}
		
		//댓글 수정 POST
		@RequestMapping(value="/replyUpdate", method = RequestMethod.POST)
		public String replyUpdate(Reply reply, SearchCriteria scri, RedirectAttributes rttr) throws Exception {
			logger.info("reply Write");
			
			rservice.updateReply(reply);
			
			rttr.addAttribute("bno", reply.getBno());
			rttr.addAttribute("page", scri.getPage());
			rttr.addAttribute("perPageNum", scri.getPerPageNum());
			rttr.addAttribute("searchType", scri.getSearchType());
			rttr.addAttribute("keyword", scri.getKeyword());
			
			return "redirect:/tomato/readView";
		}
		//댓글 삭제 GET
		@RequestMapping(value="/replyDeleteView", method = RequestMethod.GET)
		public String replyDeleteView(Reply reply, SearchCriteria scri, Model model) throws Exception {
			logger.info("reply Write");
			
			model.addAttribute("replyDelete", rservice.selectReply(reply.getRno()));
			model.addAttribute("scri", scri);
			
			return "tomato/replyDeleteView";
		}
		
		//댓글 삭제
		@RequestMapping(value="/replyDelete", method = RequestMethod.POST)
		public String replyDelete(Reply reply, SearchCriteria scri, RedirectAttributes rttr) throws Exception {
			logger.info("reply Write");
			
			rservice.deleteReply(reply);
			rttr.addAttribute("bno", reply.getBno());
			rttr.addAttribute("page", scri.getPage());
			rttr.addAttribute("perPageNum", scri.getPerPageNum());
			rttr.addAttribute("searchType", scri.getSearchType());
			rttr.addAttribute("keyword", scri.getKeyword());
			
			return "redirect:/tomato/readView";
		}
}
