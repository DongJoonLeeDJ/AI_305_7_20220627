package kr.co.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProjectController {
	
	
	@RequestMapping("/project/python")
	public String pythonpage() {
		
		return "/project/python";
	}
	
	@RequestMapping("/project/spring")
	public String springpage() {
		
		return "/project/spring";
	}
}
