package com.lecspring.myspring;

import java.util.List;
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
	
	@RequestMapping(value="/update",
			method=RequestMethod.GET)
	public ModelAndView update
	(@RequestParam Map<String,Object> map) {
		Map<String,Object> detailMap =
				this.bookService.detail(map);
		ModelAndView mav = new ModelAndView();
		mav.addObject("data", detailMap);
		System.out.println(detailMap);
		mav.setViewName("/book/update");
		return mav;
	}
	
	@RequestMapping(value="/update",
			method=RequestMethod.POST)
	public ModelAndView updatePost
	(@RequestParam Map<String, Object> map) {
		ModelAndView mav = new ModelAndView();
		boolean isUpdateSuccess 
		= this.bookService.edit(map);
		if(isUpdateSuccess) {
			String bookId=map.get("bookId").toString();
			mav.setViewName
			("redirect:/detail?bookId="+bookId);
		} else {
			mav = this.update(map); //get방식으로 다시 접근
		}
		return mav;
	}
	
	@RequestMapping(value="/delete",
			method= RequestMethod.POST) 
	public ModelAndView deletePost
	(@RequestParam Map<String,Object> map) {
		ModelAndView mav = new ModelAndView();
		boolean isDeleteSuccess =
				this.bookService.remove(map);
		if(isDeleteSuccess) {
			mav.setViewName("redirect:/list");
		} else {
			String bookId 
			= map.get("bookId").toString();
			mav.setViewName
			("redirect:/detail?bookId="
			+bookId);
		}
		return mav;
	}
	
	//페이징 처리 위해서 매개 변수가 2개가 됨
	//기존의 객체 매개변수인 map과 더불어서
	//현재 페이지를 의미하는 nowPage도 같이 보내옴
	@RequestMapping(value="list")
	public ModelAndView list
	(@RequestParam Map<String,Object> map,
	 @RequestParam(value="nowPage", 
	 required=false) String nowPage) {
		double CNT = 2.0; //한 번에 보여지는 페이지 의미(밑에 숫자)
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
		
		mav.setViewName("/book/list");
		return mav;
		
	}
	
	
	
	
}












