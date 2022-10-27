package com.store.gdgd.stock;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StockDAO {
	
	@Autowired
	SqlSessionTemplate sst;
}
