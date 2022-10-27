package kr.co.yj.dao;

import java.util.List;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.yj.vo.Reply;

//DB를 통해 데이터를 댓글 작성, 조회, 수정, 삭제하는 역활
@Repository
public class ReplyDAO {
	@Inject
	private SqlSession sqlSession;
	//댓글작성
	public void writeReply(Reply reply) throws Exception{
		sqlSession.insert("replyMapper.writeReply",reply);
	}
	//댓글 조회
	public List<Reply> selectListReply(int bno) throws Exception{
		return sqlSession.selectList("replyMapper.selectRelyList",bno);
	}
	//댓글 수정 
	public void updateReply(Reply reply) throws Exception{ 
		sqlSession.update("replyMapper.updateReply",reply); 
	}
	//댓글 삭제 
	public void deleteReply(Reply reply) throws Exception{
		 sqlSession.delete("replyMapper.deleteReply", reply); 
	}
	//게시물 조회
	public Reply selectReply(int rno) throws Exception{ return
		 sqlSession.selectOne("replyMapper.selectReply", rno); 
	}
}
