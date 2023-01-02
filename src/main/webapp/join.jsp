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
    <title>Sign up</title>
    <link href="css/join.css" rel="stylesheet" />
</head>

<body>
	<form method="post" action="/MTJ1912031/mcontrol?action=insert">
    <div class="wrapper">
        <div class="title"><h1 style="font-size: 21px;">회원가입</h1></div>
       <div class="name">
            <input id="name" name="na" type="text" maxlength=20 placeholder="이름을 입력해 주세요. (20자 제한)">   
        </div>
        <div class="id">
            <input id="id" name="ids" type="text" maxlength=20 placeholder="아이디를 입력해 주세요. (20자 제한)">   
        </div>
         <div class="password">
            <input id="password" name="pwd" type="password" maxlength=20 placeholder="비밀번호를 입력해 주세요. (20자 제한)">  
        </div> 
        <div class="email">
            <input id="email" name="emails" type="text" maxlength="30"  placeholder="이메일을 입력해 주세요. (30자 제한)"><br>
        </div>    
        <div class="phone">
            <input id="phone" name="phones" type="text" maxlength=20 placeholder="전화번호를 입력해주세요 (20자 제한)">
        </div>
        </div>
 
        <div class="line">
            <hr>
        </div>
        <div class="signUp">
            <input type="submit" value="가입하기" class="signUp">
             <a href="/MTJ1912031/mcontrol?action=index">홈 화면으로</a>
        </div>
        </form>
</body>
</html>