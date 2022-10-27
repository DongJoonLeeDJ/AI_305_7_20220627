package kr.co.yj.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.yj.vo.Member;

@Repository
public class MemberDAO {
	@Inject
	private SqlSession sqlSession;
	//회원가입
	public void memberInsert(Member member)throws Exception {
		sqlSession.insert("memberMapper.insert", member);
	}
	//로그인
	public Member login(Member member) throws Exception{
		return sqlSession.selectOne("memberMapper.login",member);
	}
	//수정
	public void memberUpdate(Member member) throws Exception{
		sqlSession.update("memberMapper.memberUpdate", member);
	}
	//삭제
	public void memberDelete(Member member)throws Exception{
		sqlSession.delete("memberMapper.memberDelete",member);
	}
	// 패스워드 체크
	public int pwChk(Member member) throws Exception {
		int result = sqlSession.selectOne("memberMapper.pwChk", member);
		return result;
	}
	// 아이디 중복 체크
	public int idChk(Member member) throws Exception {
		int result = sqlSession.selectOne("memberMapper.idChk", member);
		return result;
	}
}
