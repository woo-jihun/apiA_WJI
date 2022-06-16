<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="jspstudy.domain.*" %>   
<%@ page import = "java.util.*" %> 

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/footer3.css">


<meta charset="UTF-8">
<title>소개</title>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style media="screen">
      *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

#abo_1{
	position: relative;
	left : 460px;
	top: 50px;
	font-family:  'NanumSquare', sans-serif; 
	font-weight: bold;
	
}

#abo_2{
	position: relative;	
	top: -400px;
	left: 450px;
	font-family:  'NanumSquare', sans-serif; 
	font-weight: bold;
	
}

#abo_3{
	position: relative;	
	top: -300px;
	left: 450px;
	font-family:  'NanumSquare', sans-serif; 
	font-weight: bold;
	
}

#cafe_img_1{
	position: relative;
	left : 480px;
	top : -140px;
}
#cafe_img_2{
	position: relative;
	top : -350px;
}
#cafe_img_3{
	position: relative;
	top : -560px;
	left: 240px;
}

#addr {
	position: relative;
	top:-70px;
	left: 600px;
}
}

</style>





</head>
<body>

 <header>   
        <div class="logo"> 
            <a href="index.jsp"><img src="image/logo.png" alt="logo" id="logo"></a>         
            </div>      
            
            <nav>
                <ul>
                    <li><a href="about.jsp">소개</a></li>
                    <li><a href="gallery.jsp">갤러리</a></li>
                    <li><a href="<%=request.getContextPath() %>/board/boardList.do">공지사항</a></li>
                    <li><a href="void(0);" onclick="alert('준비중입니다');return false;">문의하기</a></li>
                    </ul>
            </nav>
            <%
				String memberId = null;
            if (session.getAttribute("memberId") != null){
            	memberId = (String)session.getAttribute("memberId");
				}
			%>
           
           <%
           if (memberId == null){        	
           %> 
           
            <div class="mp">
            	<h3 id="mp"><a href="<%=request.getContextPath() %>/member/memberLogin.do">로그인</a></h3>
            	<h3 id="mp"><a href="<%=request.getContextPath() %>/member/memberJoin.do">회원가입</a></h3>             	           
            </div>
           <% 
           } else {
        	   %>   
        	<div class="mp">
           	<h3 id="mp"><a href="<%=request.getContextPath() %>/member/memberLogout.do">로그아웃</a></h3>
           	<h3 id="mp"><a href="#">마이페이지</a></h3>             	           
            </div>
        	   
            <%
           } 
           %>
            
            
        </header>
                <div>
        <img src="image/a_background-img.jpg" width="100%" > 
        </div>
        
        
      <div id="abo_1">
      <h2>소개</h2>
      <br>
      <h4>앙쥬레브의 의미는<br>
     	  불어 ange(천사) + reve(꿈)의 합성어입니다.<br>
		  반려견 천사들의 꿈이 펼쳐지는<br>
		  즐거운 반려견 복합문화 공간입니다.<br>
	  </h4>   
	  <div id="cafe_img_1"><img src="image/cafe.jpg" width="32%"> </div>   
	  <div id="cafe_img_2"><img src="image/cafe1.jpg" width="12%"> </div>
	  <div id="cafe_img_3"><img src="image/cafe2.jpg" width="12%"> </div>      
      </div>
       
       
      <div id="abo_2">
      <h2>이용안내</h2>
      <br>
      <h4>1. 예방접종 5차가 안된 아가들은 출입을 금합니다.<br>
		  2. 외부 음식 / 간식 반입을 금합니다.<br>
		  3. 간식나눔은 알레르기 예방 차원에서 항상 다른 견주님들께 확인 부탁드려요.<br>
		  4. 아가들은 억지로 안거나 뛰어 다니지 말아주세요.<br>
		  5. 반려견의 배설물은 직접 치워 주시면 감사하겠습니다.<br>
		  6. 남자 아이는 매너밸트를 꼭 채워주세요.(대여료 1,000원)<br>
		  7. 미취학아동 또는 10살 미만 아이들은 보호자와 함께 입장해주세요.<br>
		  8. 사나운 강아지, 전염병, 생리중인 아이, 10키로 이상 강아지는 출입을 금합니다.<br>
		     (소형강아지 전용 카페입니다. 작은 아가들이 무서워해요 ㅠㅠ)<br>
		  9. 카페 강아지들은 의자나 책상 위에 올리지 말아주세요.<br>
		     (뼈가 약해서 잘 다친답니다.ㅠㅠ)<br>
		  10. 바테이블 이용시 넘어지지 않도록 주의해주세요.^^<br>
	  </h4> 
      
      </div>
      
      <div id="abo_3">
      <h2>오시는길</h2>
      <br>
      
	  
	  
<!-- 지도를 표시할 div 입니다 -->
<div id="map" style="width:550px;height:500px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b893a5e40a18fffc73233ee912c5bca2"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(35.84026766880468, 127.13248077220757), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption); 
//마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(35.84026766880468, 127.13248077220757); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

//일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
var mapTypeControl = new kakao.maps.MapTypeControl();

// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
var zoomControl = new kakao.maps.ZoomControl();
map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
</script>
<div id="addr">
<h4>연락처   063-000-0000<br>
휴무일   매주 월요일<br>
주소   전라북도 전주시 덕진구 백제대로 572 5층
</h4>
</div>



<footer>
        <div class="footer-content">
            <h3>ange reve</h3><br>
            <p>상호 : 앙쥬레브 대표자명 : 홍길동<br>
               사업자등록번호 : 000-00-00000 통신판매업번호 : 제000-전라북도-0000호<br>
               연락처 : 000-000-0000 팩스 : 000-0000-0000 이메일 : abcdefg@naver.com <br>
               주소 : 전라북도 전주시 덕진구 백제대로 572 5층</p>
            <ul class="socials">
                <li><a href="https://www.facebook.com"><i class="fa fa-facebook"></i></a></li>
                <li><a href="https://www.twitter.com"><i class="fa fa-twitter"></i></a></li>
                <li><a href="https://www.google.com"><i class="fa fa-google-plus"></i></a></li>
                <li><a href="https://www.youtube.com"><i class="fa fa-youtube"></i></a></li>
            </ul>
        </div>
        <div class="footer-bottom">
            <p>copyright &copy; <a href="#">ange reve</a>  </p>
                    <div class="footer-menu">
                    </div>
        </div>

    </footer>


</body>
</html>