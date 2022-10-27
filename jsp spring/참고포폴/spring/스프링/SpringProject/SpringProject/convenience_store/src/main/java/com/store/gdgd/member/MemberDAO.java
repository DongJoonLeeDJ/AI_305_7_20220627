package com.store.gdgd.member;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
	
	@Autowired
	SqlSessionTemplate sst;
	@Autowired
	MemberVO m;

	public void signUp(MemberVO m) {
		
		sst.insert("Member.SingUp", m);
	}
	public MemberVO Login(String id,String pw) {
		m.setId(id);
		m.setPw(pw);
		MemberVO mvo = sst.selectOne("Member.LogIn", m);
		return mvo;
	}
	public int checkId(String id) {
		int result = sst.selectOne("Member.checkId", id);
		return result;
	}
}
