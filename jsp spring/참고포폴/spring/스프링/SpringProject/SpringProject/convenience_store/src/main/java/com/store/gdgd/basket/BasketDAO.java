package com.store.gdgd.basket;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BasketDAO {
	@Autowired
	SqlSessionTemplate sst;

	public void insert(BasketVO vo) {
		sst.insert("BasketSQL.insert", vo);
	}
	
	public void select(BasketVO vo) {
		sst.selectList("BasketSQL.select", vo);
	}

}
