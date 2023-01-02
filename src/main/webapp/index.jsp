<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HomePage</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
    

    <!-- swiper api cdn -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
    <script defer src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
     <!-- swiper api cdn -->

    <link rel="stylesheet" href="css/index.css">
    <script defer src="js/index.js"></script>
    </head>
    <body>
    <div class="header">
    <div class="inner">
            <h1>1912031 문태진</h1>
            <div class="gnb">
                <ul>
                <c:if test="${id==null }">
                    <li><a href="/MTJ1912031/mcontrol?action=loginform">로그인</a></li>
                    <li><a href="/MTJ1912031/mcontrol?action=join">회원가입</a></li>
                 </c:if>
                 
                 <c:if test="${id!=null }">
                 	<li><a href="/MTJ1912031/mcontrol?action=logout">로그아웃</a></li>
                    <li><a href="/MTJ1912031/mcontrol?action=memberList">회원목록</a></li>
                    <li><a href="/MTJ1912031/mcontrol?action=writeForm">글 쓰기</a></li>
                 </c:if>
                    <li><a href="/MTJ1912031/bcontrol?action=boardList">게시판</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="figure">   
        <div class="swiper">  
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="pic">   
                         <img src="img/apple.png" alt="w1">
                            <h1>iPhone 14</h1> <h4>iPhone 14는 15.4cm, iPhone 14 Plus는 17.0cm의 사이즈로 출시되며, 
                                고급스러운 디자인은 물론 놀랍도록 업그레이드한 성능의 카메라, 
                                혁신적인 안전 기능을 갖췄다. <br>iPhone 14 및 iPhone 14 Plus는 새로운 메인 및 전면 TrueDepth 카메라, 
                                특별한 각도에서의 촬영을 지원하는 울트라 와이드 카메라가 있다.<br> 
                                향상된 이미지 파이프라인인 Photonic Engine을 갖춘 강력한 카메라 시스템으로 놀랍도록 아름다운 사진 및 영상 촬영을 지원한다.
                                <a href="https://www.apple.com/kr/shop/buy-iphone/iphone-14"target="_blank" style="color:white ;">&nbsp;&nbsp;&nbsp;&nbsp;클릭시 구매 사이트로 이동</a>
                           </h4>
                    </div>  
                </div>
               <div class="swiper-slide">
                    <div class="pic">
                        <img src="img/sam.png" alt="w2">
                        <h1>Galaxy Fold</h1>
                        <h4>거침없이 광활한 시야를 선사하는 191.9 mm 인피니티 플렉스 디스플레이. 카메라 홀을 디스플레이 아래로 숨긴 Under Display Camera가 폴더블 최초로 적용되었다.
                            <br>대화면으로 한 번에 세 개의 앱까지 분할OK.&nbsp;&nbsp;플렉스 모드로 갤럭시 폴드가 혼자서 설 수 있는 독보적 능력을 선보입니다. 
                            <a href="https://www.samsung.com/sec/smartphones/galaxy-z-fold3-5g/"target="_blank" style="color:white ;">&nbsp;&nbsp;&nbsp;&nbsp;클릭시 구매 사이트로 이동</a> 
                       </div>
                      <h4>
                       &nbsp;
                      </h4>      
                </div>
                    <div class="swiper-slide">
                    <div class="pic">
                        <img src="img/cham.png" alt="w3">
                        <h1>Xiaomi - MI10</h1>
                        <h4>샤오미 미 10 시리즈는 '미 10'과 '미 10 프로' 2가지 버전으로 출시된다. 두 제품 모두 6.67인치 2340x1080 OLED 디스플레이를 탑재하고 있으며, 90Hz 주사율로 더 부드러운 화면 움직임을 보여준다.<br> 
                            AP는 퀄컴 스냅드래곤 865를 사용했으며 듀얼 모드 5G와 와이파이 6를 지원한다. 샤오미 미 10 시리즈는 두 제품 모두 후면에 1억 800만 화소 카메라를 기반으로 한 쿼드 카메라를 탑재했다.<br>
                            미 10은 1억 800만 화소 메인 카메라와 200만 화소 심도 카메라, 200만 화소 매크로 카메라, 1,300만화소 초광각 카메라로 구성됐다.  
                            <a href="https://www.mi.com/kr/mi-10-lite/"target="_blank" style="color:white ;">&nbsp;&nbsp;&nbsp;&nbsp;클릭시 구매 사이트로 이동</a> <br>
                          </h4>
                    </div>
                </div>
                
            </div>
            <div class="swiper-pagination"></div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>
        </div>  
    </div>
    <div class="section">
        <div class="inner">
            <h1>Why not use Smart Phone?</h1>
            <video src="img/phone.mp4" autoplay muted loop></video>
            <div class="wrap">
        </div>
    </div>
</div>

    <div class="footer">
        <div class="inner">
            <div class="upper">
                 <h4>Associate of Science in Engineering Technology</h4>
                <ul>
               <h4>현재 날짜<c:set var="ymd" value="<%=new java.util.Date()%>" />
					<fmt:formatDate value="${ymd}" pattern="yyyy-MM-dd" /></h4>                 
                </ul>
            </div>
           <div class="under">
                <p>울산과학대학교</p>
                <p>SW개발 전공 문태진</p>
            </div>
        </div>
    </div>
</body>
</html>