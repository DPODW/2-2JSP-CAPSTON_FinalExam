package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MemberDAO {
	Connection conn = null;
	PreparedStatement pstmt; //PreparedStatement: sql구문을 실행하는 역할
	
	final String JDBC_DRIVER = "org.h2.Driver";
	final String JDBC_URL = "jdbc:h2:tcp://localhost/~/jwbookdb";
	
	
		public void open() {
			System.out.println("====db개방====");
			try {
				Class.forName(JDBC_DRIVER); 
				conn = DriverManager.getConnection(JDBC_URL, "moon", "1234"); 	
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		public void close() {  
			System.out.println("====db종료====");
			try {
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		
		public void insert(MemberVO vo) {
			System.out.println("===insert구문 실행(dao)====");
			open();
			
			String sql = "insert into member(name,id,pwd,email,phone) values (?,?,?,?,?)";    	
			
			try {
				pstmt = conn.prepareStatement(sql);
	    		pstmt.setString(1, vo.getName());
	    		pstmt.setString(2, vo.getId());
	    		pstmt.setString(3, vo.getPwd());
	    		pstmt.setString(4, vo.getEmail());
	    		pstmt.setString(5, vo.getPhone());
	    		
	    		pstmt.executeUpdate(); 
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				close(); 
			}
		}
			
		public Boolean loginCheck(String id, String pwd) {
			System.out.println("====로그인 체크 기능(dao)====");
	    	open(); //DB 연결완료
	    	String sql = "select * from member where id=? and pwd=?";
	    	
	    	Boolean loginc = false;
	    	
	    	try {
	    		pstmt = conn.prepareStatement(sql);    		
	    		pstmt.setString(1, id);
	    		pstmt.setString(2, pwd);
	    		
	    		ResultSet rs = pstmt.executeQuery();  
	    		
	    		if(rs.next()) { //회원이 맞음
	    			loginc = true;
	    		}    		 
	    		else { //회원 아님
	    			loginc = false;
	    		}
	    		
		    	} catch (Exception e) {
					e.printStackTrace();
				} finally {
					close();
				}
				return loginc;
			}
		
	
	
		public List<MemberVO> getMemberList(){
			System.out.println("===회원 목록 가져옴(dao)===");
			
			open(); 
	    	String sql = "select * from member";
	    	List<MemberVO> list = new ArrayList<>();
	    	try {
	    		pstmt = conn.prepareStatement(sql);    		
	    		
	    		ResultSet rs = pstmt.executeQuery();  //
	    		while(rs.next()) {
	    			MemberVO listVO = new MemberVO();
	    			listVO.setName(rs.getString("name"));
	    			listVO.setId(rs.getString("id"));
	    			listVO.setEmail(rs.getString("email"));
	    			listVO.setPwd(rs.getString("pwd"));
	    			listVO.setPhone(rs.getString("phone"));
	    			
	    			list.add(listVO);    			
		    		}    		 
		    	} catch (Exception e) {
					e.printStackTrace();
				} finally {
					close();
				}
		    	
		    	return list;
		        }
		
	
			public void deleteOne(String id) {
			   	System.out.println("====deleteOne()====");
			   	open();	
			   	String sql = "delete from member where id=?";    	
			   	try {
			   		pstmt = conn.prepareStatement(sql);
			   		pstmt.setString(1, id);
			   		pstmt.executeUpdate();  
			   	} catch (Exception e) {
						e.printStackTrace();
				} finally {
						close(); 
			    }
			}
			
			
			 public void updateOne(String id, String email, String phone) {
				   	System.out.println("====updateOne()====");
				   	System.out.println("id="+id);
				   	System.out.println("email="+email);
				   	System.out.println("phone="+phone);
					
				   	open();
				   	
				   	String sql = "UPDATE member SET email = ? , phone = ? where id=?";    	
				   	try {
				   		pstmt = conn.prepareStatement(sql);
				   		pstmt.setString(1, email);
				   		pstmt.setString(2, phone);
				   		pstmt.setString(3, id);
				   		
				   		pstmt.executeUpdate();  //4단계
				   	} catch (Exception e) {
							e.printStackTrace();
					} finally {
							close(); // 6단계
				    }
				}
			    
			    public MemberVO getOne(String id) {
			    	System.out.println("====getOne()====");
			    	open(); //DB 연결완료
			    	String sql = "select * from member where id=?";
			    	MemberVO GetVO = new MemberVO(); 
			    	try {
			    		pstmt = conn.prepareStatement(sql);
			    		pstmt.setString(1, id);
			    		
			    		ResultSet rs = pstmt.executeQuery();  //
			    		
			    		while(rs.next()) {    			   			    		 	
			    			GetVO.setName(rs.getString("name"));
			    			GetVO.setId(rs.getString("id"));
			    			GetVO.setPwd(rs.getString("pwd"));
			    			GetVO.setEmail(rs.getString("email"));
			    			GetVO.setPhone(rs.getString("phone"));
			    			    			
			    		}    
			    		System.out.println(rs);
			    	} catch (Exception e) {
						e.printStackTrace();
					} finally {
						close(); // 6단계
					}
			    	return GetVO;
			    }
		

	
}
