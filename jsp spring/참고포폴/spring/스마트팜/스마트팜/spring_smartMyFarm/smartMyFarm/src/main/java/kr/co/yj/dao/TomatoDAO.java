package kr.co.yj.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.yj.vo.Criteria;
import kr.co.yj.vo.SearchCriteria;
import kr.co.yj.vo.Tomato;
//DB를 통해 데이터를 게시판 작성, 조회, 수정, 삭제하는 역활
@Repository
public class TomatoDAO {
	@Inject
	private SqlSession sqlSession;
	
	public void write(Tomato tomato) throws Exception{
		sqlSession.insert("tomatoMapper.insert",tomato);
	}
	//게시판 목록 조회
	public List<Tomato> selectList(SearchCriteria scri ) throws Exception{
		return sqlSession.selectList("tomatoMapper.select_list",scri);
	}
	//게시물 총 갯수
	public int listCount(SearchCriteria scri)throws Exception{
		return sqlSession.selectOne("boardMapper.listCount",scri);
	}
	//게시물 조회
	public Tomato read(int no) throws Exception{
		return sqlSession.selectOne("tomatoMapper.read", no);
	}
	//게시글 수정
	public void update(Tomato tomato) throws Exception{
		sqlSession.update("tomatoMapper.update", tomato);
	}
	//게시글 삭제
	public void delete(int no) throws Exception{
		sqlSession.delete("tomatoMapper.delete", no);
	}
	// 첨부파일 업로드
	public void insertFile(Map<String, Object> map) throws Exception {
		sqlSession.insert("tomatoMapper.insertFile", map);
	}
}
