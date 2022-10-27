package com.store.gdgd.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
	@Autowired
	MemberDAO md;

	public void signUp(MemberVO m) {
		md.signUp(m);
	}
	public MemberVO Login(String id,String pw) {
		MemberVO mvo = md.Login(id, pw);
		return mvo;
	}
	public int checkid(String id) {
		int result = md.checkId(id);
		return result;
	}
}
