package com.lecspring.myspring;

import org.springframework.stereotype.Controller;
//어노테이션
//컴파일러에다가 기능을 알려줌
//대표적인 어노테이션
//오버라이딩 deprecated 등...
//MVC중에서 Controller에 해당한다고 알려줌
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class BookController {

	@RequestMapping(value="/create", 
			method=RequestMethod.GET)
	public ModelAndView create() {
		//book 폴더의 create.jsp를 리턴함
		//ModelAndView 객체는 화면도 넘기고 값도 넘김
		return new ModelAndView("book/create");
	}
	
}












