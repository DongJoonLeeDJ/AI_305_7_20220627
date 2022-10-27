package kr.co.yj.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.co.util.FileUtils;
import kr.co.yj.dao.BoardDAO;
import kr.co.yj.vo.Board;
import kr.co.yj.vo.Criteria;
import kr.co.yj.vo.SearchCriteria;

@Service
public class BoardService {
	@Inject
	private BoardDAO bDao;
	
	@Resource(name="fileUtils")
	private FileUtils fileUtils;
	//게시글 작성
	public void write(Board board, MultipartHttpServletRequest mpRequest) throws Exception{
		bDao.write(board);
		
		List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(board, mpRequest); 
		int size = list.size();
		for(int i=0; i<size; i++){ 
			bDao.insertFile(list.get(i)); 
		}
	}
	/*
	 * @Autowired public BoardService(BoardDAO bDao) { this.bDao=bDao; }
	 */
	//게시판 목록 조회
	public List<Board> selectList(SearchCriteria scri) throws Exception{
		return bDao.selectList(scri);
	}
	//게시글 총 갯수
	public int listCount(SearchCriteria scri)throws Exception{
		return bDao.listCount(scri);
	}
	//게시물 조회
	public Board read(int bno) throws Exception{
		return bDao.read(bno);
	}
	//게시글 수정
	public void update(Board board) throws Exception{
		bDao.update(board);
	}
	//게시글 삭제
	public void delete(int bno) throws Exception{
		bDao.delete(bno);
	}
}
