<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<link rel="stylesheet" href="css/write_ex.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<html lang="en">
<head>
    <meta charset="UTF-8">    
</head>
<body>
	<form method="post" action="/MTJ1912031/mcontrol?action=write">
		    <div class="write-form">
		    <table er="1" width=500>
		        <tr>
		          <th>
		              <h2> 글 쓰기</h2>
		               <input type="text" placeholder="이름을 입력하세요.(20자 제한)" maxlength=10 name="writer">
		           </th>   
		        </tr>
		        
		        <tr>
		           <td>
		                <input type="text" placeholder="제목을 입력하세요.(50자 제한)" maxlength=30  style="width:100%" name="title" >
		            </td>
		        </tr>
		        
		        <tr>
		             <td height=400>
		                <textarea placeholder="내용을 입력하세요.(200자 제한)" style="width: 100%; height: 100%" name="content" maxlength=200></textarea>
		            </td>
		        </tr>       
		        <tr>
		            <td> 
		                <a href="/MTJ1912031/mcontrol?action=index">홈 화면으로</a>
		                <input type="submit" value="글쓰기">
		                <a href="/MTJ1912031/bcontrol?action=boardList">글 목록보기</a>
		            </td>
		        </tr>
		   	
		    </table>
		</div>
	 </form>
	</body>
</html>