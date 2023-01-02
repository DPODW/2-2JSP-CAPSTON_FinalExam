<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<meta charset="utf-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

<html lang="ko">

<head>
    <title>Update</title>
    <link href="css/mUpdate.css" rel="stylesheet" />
</head>

<body>
	 <form method="post" action="/MTJ1912031/mcontrol?action=update&ids=${vo.id}">
    <div class="wrapper">
        <div class="title"><h1 style="font-size: 21px;">회원 수정</h1></div>
       <div class="name">
            <input id="name" name="na" type="text" value="${vo.name}    (이름은 수정 불가능 항목입니다)" disabled>   
        </div>
        <div class="id">
            <input id="id" name="ids" type="text" value="${vo.id}	  (id는 수정 불가능 항목입니다)" disabled>   
        </div>
         <div class="password">
            <input id="password" name="pwd" type="password" value="${vo.pwd}" disabled>  
        </div> 
        <div class="email">
            <input id="email" name="emails" type="text" maxlength=30  value="${vo.email}"	placeholder="이메일을 수정해주세요.(30자 제한)"><br>
        </div>    
        <div class="phone">
            <input id="phone" name="phones" type="text" maxlength=20  value="${vo.phone}" placeholder="전화번호를 수정해주세요.(20자 제한)">
        </div>
        </div>
       
        <div class="line">
            <hr>
        </div>
        <div class="signUp">
            <input type="submit" value="수정하기" class="signUp">
            <a href="/MTJ1912031/mcontrol?action=memberList">회원 목록으로</a>
            <a href="/MTJ1912031/mcontrol?action=index">홈 화면으로</a>
        </div>
        </form>
    

</body>

</html>
