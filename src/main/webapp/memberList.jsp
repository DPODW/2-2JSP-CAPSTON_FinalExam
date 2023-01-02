 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
    
<!DOCTYPE html>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/memberList.css">
<html>
<head>
<meta charset="UTF-8">
<title>MemberList</title>
</head>
<body>
  <h2>회원 목록</h2>
  <a href="/MTJ1912031/mcontrol?action=index">홈으로 이동</a>
  <hr>
  
  
   <table border="1">
	   <tr>
	     <th>이름</th> <th>아이디</th> <th>비밀번호</th> <th>이메일</th> <th>휴대전화</th> 
	     <th>수정</th> <th>삭제</th> 
	   </tr>
	    <c:forEach var="vo" items="${list}" > 
	     <tr>
	       <td> ${vo.name} </td>
	       <td> ${vo.id} </td>
	       <td> ${vo.pwd} </td>
	       <td> ${vo.email} </td>
	       <td> ${vo.phone} </td>
	       <td> <a href="/MTJ1912031/mcontrol?action=updateForm&ids=${vo.id}">수정</a> </td>
	       <td> <a href="/MTJ1912031/mcontrol?action=delete&ids=${vo.id}">삭제</a> </td>      	       
	     </tr>
	    </c:forEach> 
   </table>

</body>
</html>

