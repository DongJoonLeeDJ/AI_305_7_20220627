package com.bookstore.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookstore.dao.BookDao;

//Controller�� DAO�� �̾��ִ� ��
@Service
public class BookServiceImpl implements BookService{

	@Autowired
	BookDao bookDao;//��ü �ڵ� ���� �� ����
	
	//import�� ���ǻ��� : java.awt �ƴ�
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










