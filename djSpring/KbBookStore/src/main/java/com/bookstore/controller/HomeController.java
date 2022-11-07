package com.bookstore.controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public ModelAndView home2(@RequestParam Map<String, Object> map, MultipartFile file, HttpServletRequest request) {
		//System.out.println(map);
		System.out.println(file.getOriginalFilename());
		
		//ServletContext application = request.getSession().getServletContext();
		//String realPath = application.getRealPath("/resources/imgUpload");
//		System.out.println(realPath);
		//File uploadPath = new File(realPath);
//		System.out.println(uploadPath.exists());
//		if(uploadPath.exists()==false)
//			uploadPath.mkdir();
//		
		String uploadPath = "D:\\study\\mywork\\AI_305_7_20220627\\djSpring\\KbBookStore\\src\\main\\webapp\\resources\\imgUpload";
		String uploadFileName = file.getOriginalFilename();
		UUID uuid = UUID.randomUUID();
		//uploadFileName = uuid.toString()+"_"+uploadFileName;
		
		try {
			file.transferTo(new File(uploadPath, uploadFileName));
			System.out.println(new File(uploadPath, uploadFileName).canExecute());
			System.out.println(new File(uploadPath, uploadFileName).getName());
			System.out.println(uploadPath+"\\"+uploadFileName);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch(Exception e) {
			e.printStackTrace();
		}
//		
//		
//		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home");
		Map<String,Object> attributeValue = new HashMap<String,Object>();
		attributeValue.put("fileName", "resources/imgUpload/"+uploadFileName);
		System.out.println(attributeValue.get("fileName"));
		mav.addObject("data", attributeValue);
		
		return mav;
		
		
		
	}
	
}
