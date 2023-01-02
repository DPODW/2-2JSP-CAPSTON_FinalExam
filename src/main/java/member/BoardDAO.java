package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BoardDAO {

	Connection conn = null;
	PreparedStatement pstmt;
	
	final String JDBC_DRIVER = "org.h2.Driver";
	final String JDBC_URL = "jdbc:h2:tcp://localhost/~/jwbookdb";
	
	public void open() {
		System.out.println("====open()====");
		try {
			Class.forName(JDBC_DRIVER);  
			conn = DriverManager.getConnection(JDBC_URL, "moon", "1234");		
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void close() {  
		System.out.println("====close()====");
		try {
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
      public void insert(BoardVO b) {
    	System.out.println("====Boardinsert()====");		
    	open();    	
    	String sql = "insert into board(title, content, writer) values (?,?,?)";    	
    	try {
    		pstmt = conn.prepareStatement(sql);
    		pstmt.setString(1, b.getTitle());
    		pstmt.setString(2, b.getContent());
    		pstmt.setString(3, b.getWriter());
    		    		
    		pstmt.executeUpdate(); 
    	} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(); 
		}
	}
      
      public List<BoardVO> getBoardList() {
      	System.out.println("(DA0)getBoardList 실행");
      	open(); 
      	String sql = "select * from board";
      	
      	List<BoardVO> Blist = new ArrayList<>();
      	
      	try {
      		pstmt = conn.prepareStatement(sql);    		
      		
      		ResultSet rs = pstmt.executeQuery(); 
      		while(rs.next()) {
      			BoardVO b = new BoardVO();    			
                  b.setBid(rs.getInt("bid"));   
                  b.setTitle(rs.getString("title"));
                  b.setWriter(rs.getString("writer"));
                  b.setContent(rs.getString("content"));
                  Blist.add(b);    			
		      		}    		 
		      	}catch (Exception e) {
		  			e.printStackTrace();
		  		}finally {
		  			close(); 
		  		}
		      	return Blist;
		      }
      
      
      
      public void BdeleteOne(String writer) {
		   	System.out.println("(DAO)BdeleteOne 실행");
		   	open();	
		   	String sql = "delete from board where writer=?";    	
		   	try {
		   		pstmt = conn.prepareStatement(sql);
		   		pstmt.setString(1, writer);
		   		pstmt.executeUpdate();  
		   	} catch (Exception e) {
					e.printStackTrace();
			} finally {
					close(); 
		    }
		}
      
      
      public void BupdateOne(String title, String content, String writer) {
		   	System.out.println("(DAO)bupdateOne 실행");
		   	System.out.println("title="+title);
		   	System.out.println("content="+content);
		   	System.out.println("writer="+writer);
			
		   	open();
		   	
		   	String sql = "UPDATE board SET title = ? , content = ? where writer=?";    	
		   	try {
		   		pstmt = conn.prepareStatement(sql);
		   		pstmt.setString(1, title);
		   		pstmt.setString(2, content);
		   		pstmt.setString(3, writer);
		   		
		   		pstmt.executeUpdate();  //4단계
		   	} catch (Exception e) {
					e.printStackTrace();
			} finally {
					close(); // 6단계
		    }
		}
      
	    public BoardVO BgetOne(String writer) {
	    	System.out.println("(DAO)BgetOne 실행");
	    	open(); //DB 연결완료
	    	String sql = "select * from board where writer=?";
	    	BoardVO BGetVO = new BoardVO(); 
	    	try {
	    		pstmt = conn.prepareStatement(sql);
	    		pstmt.setString(1, writer);
	    		
	    		ResultSet rs = pstmt.executeQuery();  //
	    		
	    		while(rs.next()) {    			   			    		 	
	    			BGetVO.setWriter(rs.getString("writer"));
	    			BGetVO.setBid(rs.getInt("bid"));
	    			BGetVO.setContent(rs.getString("content"));
	    			BGetVO.setTitle(rs.getString("title"));
	    			    			
	    		}    
	    		System.out.println(rs);
	    	} catch (Exception e) {
				e.printStackTrace();
			} finally {
				close(); // 6단계
			}
	    	return BGetVO;  
	    }
      
     
      
	
}
