package com.lecspring.myspring;

import org.springframework.stereotype.Controller;
//������̼�
//�����Ϸ����ٰ� ����� �˷���
//��ǥ���� ������̼�
//�������̵� deprecated ��...
//MVC�߿��� Controller�� �ش��Ѵٰ� �˷���
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class BookController {

	@RequestMapping(value="/create", 
			method=RequestMethod.GET)
	public ModelAndView create() {
		//book ������ create.jsp�� ������
		//ModelAndView ��ü�� ȭ�鵵 �ѱ�� ���� �ѱ�
		return new ModelAndView("book/create");
	}
	
}












