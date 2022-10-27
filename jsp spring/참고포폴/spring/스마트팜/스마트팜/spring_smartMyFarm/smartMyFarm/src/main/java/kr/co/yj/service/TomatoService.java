package kr.co.yj.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.co.util.FileUtils;
import kr.co.yj.dao.TomatoDAO;
import kr.co.yj.vo.Criteria;
import kr.co.yj.vo.SearchCriteria;
import kr.co.yj.vo.Tomato;

@Service
public class TomatoService {
	@Inject
	private TomatoDAO tdao;
	
	@Resource(name="fileUtils")
	private FileUtils fileUtils;
	//게시글 작성
	public void write(Tomato tomato, MultipartHttpServletRequest mpRequest) throws Exception{
		tdao.write(tomato);
		
		List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(tomato, mpRequest); 
		int size = list.size();
		for(int i=0; i<size; i++){ 
			tdao.insertFile(list.get(i)); 
		}
	}
	/*
	 * @Autowired public BoardService(BoardDAO bDao) { this.bDao=bDao; }
	 */
	//게시판 목록 조회
	public List<Tomato> selectList(SearchCriteria scri) throws Exception{
		return tdao.selectList(scri);
	}
	//게시글 총 갯수
	public int listCount(SearchCriteria scri)throws Exception{
		return tdao.listCount(scri);
	}
	//게시물 조회
	public Tomato read(int no) throws Exception{
		return tdao.read(no);
	}
	//게시글 수정
	public void update(Tomato tomato) throws Exception{
		tdao.update(tomato);
	}
	//게시글 삭제
	public void delete(int no) throws Exception{
		tdao.delete(no);
	}
}
