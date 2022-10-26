package com.lecspring.myspring;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

//Controller랑 DAO를 이어주는 것
@Service
public class BookServiceImpl implements BookService{

	@Autowired
	BookDao bookDao;//객체 자동 생성 및 관리
	
	@Override
	public String create(Map<String, Object> map) {
		int affectRowCount = this.bookDao.insert(map);
		if(affectRowCount==1)
			return map.get("book_id").toString();
		return null;
	}
	
	@Override
	public Map<String,Object> detail
		(Map<String,Object> map) {
		return this.bookDao.selectDetail(map);
	}
	
}










