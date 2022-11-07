package com.bookstore.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookstore.dao.BookDao;

//Controller랑 DAO를 이어주는 것
@Service
public class BookServiceImpl implements BookService{

	@Autowired
	BookDao bookDao;//객체 자동 생성 및 관리
	
	//import시 주의사항 : java.awt 아님
	@Override
	public List<Map<String,Object>> list
	(Map<String,Object> map) {
		return this.bookDao.selectList(map);
	}

	@Override
	public int countBookBoard(Map<String, Object> map) {
		return this.bookDao.countBookBoard(map);
	}


	@Override
	public Map<String,Object> detail
		(Map<String,Object> map) {
		return this.bookDao.selectDetail(map);
	}
	
}










