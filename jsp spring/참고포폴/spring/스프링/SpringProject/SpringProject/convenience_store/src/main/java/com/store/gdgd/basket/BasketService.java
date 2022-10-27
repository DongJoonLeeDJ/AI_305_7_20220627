package com.store.gdgd.basket;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BasketService {

	@Autowired
	BasketDAO dao;
	
	public void insert(BasketVO vo) {
		  dao.insert(vo);
	}

}
