package com.bookstore.controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bookstore.service.BookService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class BookController {
	

	@Autowired
	BookService bookService;

	//페이징 처리 위해서 매개 변수가 2개가 됨
		//기존의 객체 매개변수인 map과 더불어서
		//현재 페이지를 의미하는 nowPage도 같이 보내옴
		@RequestMapping(value="list")
		public ModelAndView list
		(@RequestParam Map<String,Object> map,
		 @RequestParam(value="nowPage", 
		 required=false) String nowPage) {
			double CNT = 5.0; //한 번에 보여지는 페이지 의미(밑에 숫자)
			int LIMITCOUNT = (int)CNT;
			if(nowPage!=null) {
				int now = Integer.parseInt(nowPage);
				int skipCount=0;
				if(now>1)
					skipCount = (now-1)*LIMITCOUNT;
				map.put("skipCount", skipCount);
			} else {
				map.put("skipCount",0);
			}
			
			List<Map<String,Object>> list =
					this.bookService.list(map);
			ModelAndView mav = new ModelAndView();
			mav.addObject("data",list);
			int totalCount = 
					(int)Math.ceil
					(this.bookService.countBookBoard(map)/CNT);
					//ceil : 올림
			mav.addObject("totalCount", totalCount);//맨 끝 페이지 정보
			
			int nowPos = nowPage==null?1:Integer.parseInt(nowPage);
			if(nowPos<=0)
				nowPos=1;
			mav.addObject("nowPage",nowPos);
			
			int endPage = (int)(Math.ceil(nowPos/CNT)*(LIMITCOUNT));
			int startPage = 0;
			if(endPage>totalCount) { //끝 부분
				startPage = endPage-(LIMITCOUNT)+1;
				endPage=totalCount;
			} else {
				startPage = endPage-(LIMITCOUNT)+1;
			}
			if(startPage<=0)
				startPage=1;
			
			mav.addObject("startPage", startPage);
			mav.addObject("endPage", endPage);
			
			
			
			//검색시 파라메터 더 추가함
			//검색 아무 것도 입력 안 하면 원래의 목록보기 처럼 동작
			if(map.containsKey("keyword"))
				mav.addObject("keyword", map.get("keyword"));
			
			mav.setViewName("/book/bookList");
			return mav;
			
		}
		
		
		@RequestMapping(value="/detail", 
				method=RequestMethod.GET)
		public ModelAndView detail
		(@RequestParam Map<String,Object> map) {
			Map<String,Object> detailMap = 
					this.bookService.detail(map);
			//ModelAndView : 어느페이지로 갈지, 어떤 데이터 보낼지
			//정보 저장해서 한 번에 보낸다.
			ModelAndView mav = new ModelAndView();
			mav.addObject("data", detailMap);
			String bookId = map.get("bookid").toString();
			mav.addObject("bookid", bookId);
			mav.setViewName("/book/bookDetail");
			return mav;
		}
		
		@RequestMapping(value="/create", 
				method=RequestMethod.GET)
		public ModelAndView create() {
			//book 폴더의 create.jsp를 리턴함
			//ModelAndView 객체는 화면도 넘기고 값도 넘김
			return new ModelAndView("book/bookCreate");
		}
		
	
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String home(Locale locale, Model model) {
//		
//		return "book/bookList";
//	}
//	
	
//	@RequestMapping(value = "/", method = RequestMethod.POST)
//	public ModelAndView home2(@RequestParam Map<String, Object> map, MultipartFile file, HttpServletRequest request) {
//
//		String uploadPath = "D:\\study\\mywork\\AI_305_7_20220627\\djSpring\\KbBookStore\\src\\main\\webapp\\resources\\imgUpload";
//		String uploadFileName = file.getOriginalFilename();
//		
//		try {
//			file.transferTo(new File(uploadPath, uploadFileName));
//			System.out.println(new File(uploadPath, uploadFileName).canExecute());
//			System.out.println(new File(uploadPath, uploadFileName).getName());
//			System.out.println(uploadPath+"\\"+uploadFileName);
//		} catch (IllegalStateException e) {
//			e.printStackTrace();
//		} catch (IOException e) {
//			e.printStackTrace();
//		} catch(Exception e) {
//			e.printStackTrace();
//		}
//	
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("home");
//		Map<String,Object> attributeValue = new HashMap<String,Object>();
//		attributeValue.put("fileName", "resources/imgUpload/"+uploadFileName);
//		System.out.println(attributeValue.get("fileName"));
//		mav.addObject("data", attributeValue);
//		
//		return mav;
//	}
	
}
