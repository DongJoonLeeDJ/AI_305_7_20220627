package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.DBUtil;

public class BoardDAO {
	Connection conn = DBUtil.getConnection();
	
	public Connection getConnection() {
		return conn;
	}
	 //board테이블에 글을 추가(inset문)<=writePro.jsp페이지에서 사용
    public void insertArticle(BoardDTO article) 
            throws Exception {
        PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int num=article.getNum();
		int ref=article.getRef();
		int post_step=article.getPost_step();
		int post_depth=article.getPost_depth();
		int number=0;
        String sql="";

        try {
            pstmt = conn.prepareStatement("select max(num) from basic_board");
			rs = pstmt.executeQuery();
			
			if (rs.next())
		      number=rs.getInt(1)+1;
		    else
		      number=1; 
		   
		    if (num!=0) {  
		      sql="update basic_board set post_step=post_step+1 ";
		      sql += "where ref= ? and post_step> ?";
              pstmt = conn.prepareStatement(sql);
              pstmt.setInt(1, ref);
			  pstmt.setInt(2, post_step);
			  pstmt.executeUpdate();
			  post_step=post_step+1;
			  post_depth=post_depth+1;
		     }else{
		  	  ref=number;
			  post_step=0;
			  post_depth=0;
		     }	 
            // 쿼리를 작성
            sql = "insert into basic_board(name,tel,email,title,content_passwd,rank,update_time,";
		    sql+="ref,post_step,post_depth,content,ip) values(?,?,?,?,?,?,?,?,?,?,?,?)";

            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, article.getName());
            pstmt.setString(2, article.getTel());
            pstmt.setString(3, article.getEmail());
            pstmt.setString(4, article.getTitle());
            pstmt.setString(5, article.getContent_password());
            pstmt.setString(6, article.getRank());
			pstmt.setString(7, article.getUpdate_time());
            pstmt.setInt(8, ref);
            pstmt.setInt(9, post_step);
            pstmt.setInt(10, post_depth);
			pstmt.setString(11, article.getContent());
			pstmt.setString(12, article.getIpAddress());
			
            pstmt.executeUpdate();
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
    }
    
	//board테이블에 저장된 전체글의 수를 얻어냄(select문)<=list.jsp에서 사용
		public int getArticleCount()
	             throws Exception {
	        PreparedStatement pstmt = null;
	        ResultSet rs = null;

	        int x=0;

	        try {       
	            pstmt = conn.prepareStatement("select count(*) from basic_board");
	            rs = pstmt.executeQuery();

	            if (rs.next()) {
	               x= rs.getInt(1);
				}
	        } catch(Exception ex) {
	            ex.printStackTrace();
	        } finally {
	            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
	            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	        }
			return x;
	    }
		
	//글의 목록(복수개의 글)을 가져옴(select문) <=list.jsp에서 사용
		public List<BoardDTO> getArticles(int start, int end)
	             throws Exception {
			conn=DBUtil.getConnection();
	        PreparedStatement pstmt = null;
	        ResultSet rs = null;
	        List<BoardDTO> articleList=null;
	        start=start-1;
	        String sql = "select * from basic_board order by ref desc, post_step asc limit "+start+","+end;
	        try {
	            pstmt = conn.prepareStatement(sql);
//	            pstmt.setInt(1, start-1);
//				pstmt.setInt(2, end);
	            rs = pstmt.executeQuery();

	            if (rs.next()) {
	                articleList = new ArrayList<BoardDTO>(end);
	                do{
	                  BoardDTO article= new BoardDTO();
					  article.setNum(rs.getInt("num"));
					  article.setName(rs.getString("name"));
					  article.setTel(rs.getString("tel"));
	                  article.setEmail(rs.getString("email"));
	                  article.setTitle(rs.getString("title"));
	                  article.setContent_password(rs.getString("content_passwd"));
	                  article.setRank(rs.getString("rank"));
				      article.setUpdate_time(rs.getString("update_time"));
					  article.setView_count(rs.getInt("viewcount"));
	                  article.setRef(rs.getInt("ref"));
	                  article.setPost_step(rs.getInt("post_step"));
					  article.setPost_depth(rs.getInt("post_depth"));
	                  article.setContent(rs.getString("content"));
				      article.setIpAddress(rs.getString("ip")); 
					  
	                  articleList.add(article);
				    }while(rs.next());
				}
	        } catch(Exception ex) {
	            ex.printStackTrace();
	        } 
			return articleList;
	    }
		
		//글의 내용을 보기(1개의 글)(select문)<=content.jsp페이지에서 사용
		public BoardDTO getArticle(int num)
	            throws Exception {
	        PreparedStatement pstmt = null;
	        ResultSet rs = null;
	        BoardDTO article=null;
	        try {
	            pstmt = conn.prepareStatement(
	            	"update basic_board set viewcount=viewcount+1 where num = ?");
				pstmt.setInt(1, num);
				pstmt.executeUpdate();

	            pstmt = conn.prepareStatement(
	            	"select * from basic_board where num = ?");
	            pstmt.setInt(1, num);
	            rs = pstmt.executeQuery();

	            if (rs.next()) {
	                article = new BoardDTO();
	                article.setNum(rs.getInt("num"));
					article.setName(rs.getString("name"));
					article.setTel(rs.getString("tel"));
	                article.setEmail(rs.getString("email"));
	                article.setTitle(rs.getString("Title"));
	                article.setContent_password(rs.getString("content_passwd"));
				    article.setRank(rs.getString("rank"));
					article.setUpdate_time(rs.getString("update_time"));
					article.setView_count(rs.getInt("viewcount"));
	                article.setRef(rs.getInt("ref"));
	                article.setPost_step(rs.getInt("post_step"));
					article.setPost_depth(rs.getInt("post_depth"));
	                article.setContent(rs.getString("content"));
				    article.setIpAddress(rs.getString("ip"));     
				}
	        } catch(Exception ex) {
	            ex.printStackTrace();
	        } finally {
	            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
	            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	        }
			return article;
	    }
		
		//글 수정폼에서 사용할 글의 내용(1개의 글)(select문)<=updateForm.jsp에서 사용
		public BoardDTO updateGetArticle(int num)
		      throws Exception {
		    PreparedStatement pstmt = null;
		    ResultSet rs = null;
		    BoardDTO article=null;
		    try {
		    	pstmt = conn.prepareStatement(
		    	"select * from basic_board where num = ?");
		        pstmt.setInt(1, num);
		        rs = pstmt.executeQuery();

		        if (rs.next()) {
	                article = new BoardDTO();
	                article.setNum(rs.getInt("num"));
					article.setName(rs.getString("name"));
					article.setTel(rs.getString("tel"));
	                article.setEmail(rs.getString("email"));
	                article.setTitle(rs.getString("Title"));
	                article.setContent_password(rs.getString("content_passwd"));
				    article.setRank(rs.getString("rank"));
					article.setUpdate_time(rs.getString("update_time"));
					article.setView_count(rs.getInt("viewcount"));
	                article.setRef(rs.getInt("ref"));
	                article.setPost_step(rs.getInt("post_step"));
					article.setPost_depth(rs.getInt("post_depth"));
	                article.setContent(rs.getString("content"));
				    article.setIpAddress(rs.getString("ip"));      
				}
		    } catch(Exception ex) {
		        ex.printStackTrace();
		    } finally {
		        if (rs != null) try { rs.close(); } catch(SQLException ex) {}
		        if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
		        if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		    }
			return article;
		}
		
		//글 수정처리에서 사용(update문)<=updatePro.jsp에서 사용
		public int updateArticle(BoardDTO article)
		      throws Exception {
		    PreparedStatement pstmt = null;
		    ResultSet rs= null;

		    String dbpasswd="";
		    String sql="";
			int x=-1;
		    try {
				pstmt = conn.prepareStatement(
		        	"select content_passwd from basic_board where num = ?");
		        pstmt.setInt(1, article.getNum());
		        rs = pstmt.executeQuery();
		        
				if(rs.next()){
				  dbpasswd= rs.getString("content_passwd"); 
				  if(dbpasswd.equals(article.getContent_password())){
		            sql="update basic_board set name=?,tel=?,email=?,title=?,content_passwd=?";
				    sql+=",content=? where num=?";
		            pstmt = conn.prepareStatement(sql);

		            pstmt.setString(1, article.getName());
		            pstmt.setString(2, article.getTel());
		            pstmt.setString(3, article.getEmail());
		            pstmt.setString(4, article.getTitle());
		            pstmt.setString(5, article.getContent_password());
		            pstmt.setString(6, article.getContent());
				    pstmt.setInt(7, article.getNum());
		            pstmt.executeUpdate();
					x= 1;
				  }else{
					x= 0;
				  }
				}
		    } catch(Exception ex) {
		        ex.printStackTrace();
		    } finally {
				if (rs != null) try { rs.close(); } catch(SQLException ex) {}
		        if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
		        if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		    }
			return x;
		}
		
		//글삭제처리시 사용(delete문)<=deletePro.jsp페이지에서 사용
		public int deleteArticle(int num, String passwd)
		    throws Exception {
		    PreparedStatement pstmt = null;
		    ResultSet rs= null;
		    String dbpasswd="";
		    int x=-1;
		    try {
		        pstmt = conn.prepareStatement(
		        	"select content_passwd from basic_board where num = ?");
		        pstmt.setInt(1, num);
		        rs = pstmt.executeQuery();
		        
				if(rs.next()){
					dbpasswd= rs.getString("content_passwd");
					if(dbpasswd.equals(passwd)){
						pstmt = conn.prepareStatement(
		        	      "delete from basic_board where num=?");
		                pstmt.setInt(1, num);
		                pstmt.executeUpdate();
						x= 1; //글삭제 성공
					}else
						x= 0; //비밀번호 틀림
				}
		    } catch(Exception ex) {
		        ex.printStackTrace();
		    } finally {
		        if (rs != null) try { rs.close(); } catch(SQLException ex) {}
		        if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
		        if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		    }
			return x;
		}
		
}
