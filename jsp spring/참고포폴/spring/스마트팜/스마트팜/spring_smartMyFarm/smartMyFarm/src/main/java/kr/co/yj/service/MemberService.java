package kr.co.yj.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.yj.dao.MemberDAO;
import kr.co.yj.vo.Member;

@Service
public class MemberService {
	@Inject
	private MemberDAO mdao;
	//회원가입
	public void memberInsert(Member member) throws Exception {
		mdao.memberInsert(member);
	}
	//로그인
	public Member login(Member member) throws Exception{
		return mdao.login(member);
	}
	//수정
	public void memberUpdate(Member member) throws Exception {
		mdao.memberUpdate(member);
	}
	//삭제
	public void memberDelete(Member member) throws Exception {
		mdao.memberDelete(member);
	}
	//패스워드체크
	public int pwChk(Member member)throws Exception {
		int result = mdao.pwChk(member);
		return result;
	}
	// 아이디 중복 체크
	public int idChk(Member member) throws Exception {
		int result = mdao.idChk(member);
		return result;
	}

}
