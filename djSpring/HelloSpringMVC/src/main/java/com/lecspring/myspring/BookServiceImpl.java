package com.lecspring.myspring;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

//Controller�� DAO�� �̾��ִ� ��
@Service
public class BookServiceImpl implements BookService{

	@Autowired
	BookDao bookDao;//��ü �ڵ� ���� �� ����
	
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

	@Override
	public boolean edit(Map<String, Object> map) {
		int afftectRowCount = 
				this.bookDao.update(map);
		//afftectRowCount�� 1�� �� true����
		//�� update ������ true����
		return afftectRowCount==1;
	}
	
	@Override
	public boolean remove(Map<String,Object> map) {
		int affectRowCount 
		= this.bookDao.delete(map);
		return affectRowCount==1;
	}
	
	//import�� ���ǻ��� : java.awt �ƴ�
	@Override
	public List<Map<String,Object>> list
	(Map<String,Object> map) {
		return this.bookDao.selectList(map);
	}
	
}










