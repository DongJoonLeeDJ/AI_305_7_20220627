package com.lecspring.myspring;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
//어노테이션
//컴파일러에다가 기능을 알려줌
//대표적인 어노테이션
//오버라이딩 deprecated 등...
//MVC중에서 Controller에 해당한다고 알려줌
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class BookController {
	
	//BookService bookService 
	//= new BookServiceImpl();
	@Autowired
	BookService bookService;

	//  /create로 직접 들어오거나
	//아니면 get방식으로 들어온 경우에
	//호출됨
	@RequestMapping(value="/create", 
			method=RequestMethod.GET)
	public ModelAndView create() {
		//book 폴더의 create.jsp를 리턴함
		//ModelAndView 객체는 화면도 넘기고 값도 넘김
		return new ModelAndView("book/create");
	}
	
	//  /create로 들어오는 데 post방식으로 들어온 경우 호출됨
	//책을 만드는 걸 호출하는 부분(insert 수행하게 함)
	@RequestMapping(value="/create", 
			method = RequestMethod.POST) 
	public ModelAndView createPost
	(@RequestParam Map<String,Object>map) {
		ModelAndView mav = new ModelAndView();
		System.out.println(map.toString());
		String bookId = this.bookService.create(map);
		if(bookId==null)
			mav.setViewName("redirect:/create");
		else
			mav.setViewName
			("redirect:/detail?bookId="+bookId);
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
		String bookId = map.get("bookId").toString();
		mav.addObject("bookId", bookId);
		mav.setViewName("/book/detail");
		return mav;
	}
	
	
	
}












