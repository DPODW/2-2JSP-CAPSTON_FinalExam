 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   

<!DOCTYPE html>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="css/boardMain.css">
<html lang="en">
<head>
    <title>BoardList</title>
</head>
<body>
    <div class="boardForm">
      <div class="inner">
        <h1>게시판</h1> 
        <hr>
        <h3><a href="/MTJ1912031/mcontrol?action=index">홈으로 이동</a></h3>
        <table border="1">
            <tr>
                <th>글번호</th> <th>작성자</th> <th>글 제목</th> <th>글 내용</th>
            </tr>
            <c:forEach var="b" items="${list}" >
		     <tr>
		       <td> ${b.bid} </td>
		       <td> ${b.writer} </td>
		       <td> ${b.title} </td>
               <td>
               <details>
                <summary>클릭시 내용 보여짐</summary>
                <p> ${b.content}</p>
            	</details>
            </td>
		       <td> <a href="/MTJ1912031/bcontrol?action=BupdateForm&writer=${b.writer}">수정</a> </td>
		       <td> <a href="/MTJ1912031/bcontrol?action=Bdelete&writer=${b.writer}">삭제</a> </td>	        	       
		     </tr>
	       </c:forEach>               
        </table>       
      </div>
    </div>
</body>
</html>