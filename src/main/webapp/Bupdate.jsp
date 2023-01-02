<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>

<link rel="stylesheet" href="write_ex.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="css/Bupdate.css">

<head>
    <meta charset="UTF-8">
    
</head>
<body>

 <form method="post" action="/MTJ1912031/bcontrol?action=Bupdate&writer=${bvlo.writer}">
    <div class="write-form">
    <table er="1" width=500>
       
        <tr>
         <th>
              <h2>글 수정</h2>
               <input type="text" maxlength=10 name="writer" value="${bvlo.writer}" disabled>
           </th>  
           
        </tr>
        <tr>
            <td >
                <input type="text" maxlength=30 style="width:100%" value="${bvlo.title}" name="title" placeholder="제목을 수정해주세요.(50자 제한)">
            </td>
        </tr>
        <tr>
            <td  height=400>
                <textarea  style="width: 100%; height: 100%"  name="content" placeholder="내용을 수정해주세요.(200자 제한)">${bvlo.content}</textarea>
            </td>
        </tr>
        <tr>
            <td>
                <a href="/MTJ1912031/mcontrol?action=index">홈 화면으로</a>
                <input type="submit" value="글 수정">
                <a href="/MTJ1912031/bcontrol?action=boardList">글 목록보기</a>
            </td>
        </tr>
   
    </table>
</div>
 </form>
</body>
</html>