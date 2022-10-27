package com.store.gdgd.sale;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SalesDao {
	
	@Autowired
	SqlSessionTemplate sst;
	
}
