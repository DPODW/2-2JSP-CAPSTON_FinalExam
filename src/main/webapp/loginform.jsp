<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
 <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<html>
<head>
  <title>Login</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="css/loginform.css">
  <link href="https://fonts.googleapis.com/earlyaccess/notosanskr.css" rel="stylesheet">
</head>
<body>
  <div class="login-form">
      <form method="post" action="/MTJ1912031/mcontrol?action=login">
      <input type="text" name="ids" class="text-field" placeholder="아이디">
      <input type="password" name="pwd" class="text-field" placeholder="비밀번호">
      <input type="submit"  value="로그인" class="submit-btn">
       <a href="/MTJ1912031/mcontrol?action=index">홈 화면으로</a>
	</form>
    </div>
    
    
  <div class="footer">       
   <video  height="500" src="img/vivi.mp4" autoplay muted loop></video> 
 </div>
</body>
</html>
