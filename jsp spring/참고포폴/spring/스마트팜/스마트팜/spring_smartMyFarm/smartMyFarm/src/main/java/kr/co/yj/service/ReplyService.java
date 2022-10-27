package kr.co.yj.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.yj.dao.ReplyDAO;
import kr.co.yj.vo.Reply;

@Service
public class ReplyService {
	@Inject
	private ReplyDAO rDao;
	
	public void write(Reply reply) throws Exception{
		rDao.writeReply(reply);
	}
	//댓글 조회
	public List<Reply> selectReplyList(int bno) throws Exception{
		return rDao.selectListReply(bno);
	}

	//댓글 선택 조회 
	public Reply selectReply(int rno) throws Exception{ 
		return rDao.selectReply(rno);
	}
	
	//댓글 수정
	public void updateReply(Reply reply) throws Exception{
		rDao.updateReply(reply); 
	}
	 
	//댓글 삭제
	public void deleteReply(Reply reply) throws Exception{ 
		rDao.deleteReply(reply); 
	}

}
