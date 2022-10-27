package kr.co.yj.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.yj.vo.Board;
import kr.co.yj.vo.Criteria;
import kr.co.yj.vo.SearchCriteria;
//DB를 통해 데이터를 게시판 작성, 조회, 수정, 삭제하는 역활
@Repository
public class BoardDAO {
	@Inject
	private SqlSession sqlSession;
	
	public void write(Board board) throws Exception{
		sqlSession.insert("boardMapper.insert",board);
	}
	//게시판 목록 조회
	public List<Board> selectList(SearchCriteria scri ) throws Exception{
		return sqlSession.selectList("boardMapper.select_list",scri);
	}
	//게시물 총 갯수
	public int listCount(SearchCriteria scri)throws Exception{
		return sqlSession.selectOne("boardMapper.listCount",scri);
	}
	//게시물 조회
	public Board read(int bno) throws Exception{
		return sqlSession.selectOne("boardMapper.read", bno);
	}
	//게시글 수정
	public void update(Board board) throws Exception{
		sqlSession.update("boardMapper.update", board);
	}
	//게시글 삭제
	public void delete(int bno) throws Exception{
		sqlSession.delete("boardMapper.delete", bno);
	}
	// 첨부파일 업로드
	public void insertFile(Map<String, Object> map) throws Exception {
		sqlSession.insert("boardMapper.insertFile", map);
	}
}
