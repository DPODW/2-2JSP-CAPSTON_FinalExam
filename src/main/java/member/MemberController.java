package member;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MemberController
 */
@WebServlet("/mcontrol")
	public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	MemberDAO dao = new MemberDAO(); 
	MemberVO vo = new MemberVO();
	
	BoardDAO Bdao = new BoardDAO();
	BoardVO bVO = new BoardVO();
	
    
    public MemberController() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet()");
		request.setCharacterEncoding("utf-8");
	    String action=request.getParameter("action"); 
	    System.out.println("action="+action);
	    HttpSession session = request.getSession();
  	 
	    
	    String name = request.getParameter("na");
	    String id = request.getParameter("ids");
	    String password = request.getParameter("pwd");
	    String email = request.getParameter("emails");
	    String phone = request.getParameter("phones");
	    
	    //board 파라미터
	    String title = request.getParameter("title");
        String content = request.getParameter("content");
        String writer = request.getParameter("writer");
	    
	    
	    
	    
	    switch(action) {
	    case "loginform": response.sendRedirect("loginform.jsp");  
	    	break;

	    case "insert" : 
	    	vo.setName(name);
	    	vo.setId(id);
	    	vo.setPwd(password);
	    	vo.setEmail(email);
	    	vo.setPhone(phone);
	    	
	    	dao.insert(vo);
	    	response.sendRedirect("index.jsp"); 
	    	break;
	    	
	    	
	    case "join":
	    	response.sendRedirect("join.jsp");
	    	break;
	    	
	    	
	    case "login":
	    	Boolean loginc = dao.loginCheck(id, password);
	    	
	    	 if(loginc) {
	    		  System.out.println("회원 맞음");
	    		  session.setAttribute("id", id);    		  
	    	  } else {
	    		  System.out.println("회원 아님");
	    	  }
	    	 	response.sendRedirect("index.jsp");  	
	    	 	break;
	    
	    case "logout":
	    	  session.removeAttribute("id");
	    	  response.sendRedirect("index.jsp");
	    	  break;
	    	  
	    	  
	    case "memberList":
	    	System.out.println("===회원 목록 가져오기===");
	    	
	    	List<MemberVO> list = dao.getMemberList();
	    	
	    	session.setAttribute("list", list);
	    	
	    	response.sendRedirect("memberList.jsp");  	 
	    	break;
	    
	    
	    case "writeForm":
	         response.sendRedirect("write_ex1.jsp");
	    	break;
	   
	    	
	    case "write":
	    	System.out.println("==게시판 글 작성==");
	         bVO.setTitle(title);
	         bVO.setContent(content);
	         bVO.setWriter(writer);
	          
	         Bdao.insert(bVO);
	         
	         response.sendRedirect("/MTJ1912031/bcontrol?action=boardList");
	    	break;

	    	
	    case "updateForm":
	    	  System.out.println("updateForm");
	                              
	    	  vo= dao.getOne(id); 
	          System.out.println("updateForm id:"+id);
	            		
	  		  session.setAttribute("vo", vo);
	  		
	          response.sendRedirect("mUpdate.jsp");   
	          break;
	          
	          
	    case "update":      
	    	 System.out.println("update");
	    	 
	          dao.updateOne(id,email,phone);
	          List<MemberVO> listUP = dao.getMemberList();
	         
	          session.setAttribute("list", listUP);
	          response.sendRedirect("memberList.jsp");
	          break;
	          
	               
	    case "delete":
	    	System.out.println("delete");
	    	dao.deleteOne(id);
	    	
	    	  List<MemberVO> Dlist = dao.getMemberList();
	    		
	    	  session.setAttribute("list", Dlist);
	    	      	  
	    	  response.sendRedirect("memberList.jsp");
	    	  break;

	    	
	    case "index":
	    	response.sendRedirect("index.jsp");	
	    	break;
	    }

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

