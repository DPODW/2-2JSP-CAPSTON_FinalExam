package member;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/bcontrol")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	BoardDAO Bdao = new BoardDAO();
	BoardVO bVO = new BoardVO();
	
    public BoardController() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("===BoarddoGet()=========");
		request.setCharacterEncoding("utf-8");
	    String action=request.getParameter("action");
	    System.out.println("action="+action);
	    HttpSession session = request.getSession();
		
	    String title = request.getParameter("title");
        String content = request.getParameter("content");
        String writer = request.getParameter("writer");
        
        
        switch(action) {
        
        case "boardList":
	    	List<BoardVO> Blist =  Bdao.getBoardList();
	    	session.setAttribute("list", Blist);
	    	response.sendRedirect("boardList.jsp");
	    	break;
	    	
	    	
	    	
        case "Bdelete":
	    	System.out.println("Bdelete");
	    	Bdao.BdeleteOne(writer);
	    	
	    	List<BoardVO> BDlist = Bdao.getBoardList();
	    	
	    	session.setAttribute("list", BDlist);
	    	response.sendRedirect("boardList.jsp");
	    	
	    	break;
	    	
	    	
	    case "BupdateForm":
	    	System.out.println("BupdateForm");
	    	bVO=Bdao.BgetOne(writer);
	    	
	    	session.setAttribute("bvlo",bVO);
	    	
	    	response.sendRedirect("Bupdate.jsp");
	    	
	    	break;
	    	
	    	
	    	
	    case "Bupdate":
	    	Bdao.BupdateOne(title, content, writer);
	    	
	    	List<BoardVO> BUlist = Bdao.getBoardList();
	    	
	    	session.setAttribute("list", BUlist);
	    	
	    	response.sendRedirect("boardList.jsp");
	    	break;
	    	
        }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
