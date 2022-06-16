<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="jspstudy.domain.*" %>   
<%@ page import = "java.util.*" %> 
    
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/footer.css">



<meta charset="UTF-8">
<title>갤러리</title>

   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style media="screen">
      *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
</style>

	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<link rel="stylesheet" href="css/chromagallery.css">
	<style type="text/css">
	
	#gall {
		position: relative;	
		top : 0px;
	}
	
		body,html{height: 100%;}
		.content
		{
			width: 100%;
			height: 100%;
			margin: 30px auto;
		}

		.chroma-gallery-logo
		{
			width: 300px;
			height: 124px;
			background: url(images/chromagallery_logo.png) no-repeat;
			margin: 0px auto;
		}

		.mygallery{margin: 25px 0;}	

		@media screen and (max-width: 400px) /* small logo */ 
		{
		  .chroma-gallery-logo
		  {
		  	width: 200px;
		  	height: 83px;
		  	background-size:200px 83px;
		  }
		}

		@media screen and (min-width: 980px) /* Desktop */ 
		{
		  .content {width: 60%;}
		}	

	</style>
	<title>Chroma Gallery</title>
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
        <img src="image/g_background-img.jpg" width="100%" > 
        </div>

	<section id="gall">

	<div class="content">
		<div class="chroma-gallery mygallery">
			<img src="image/thumbs/g_1.jpg" alt="Pic 1" data-largesrc="images/g_1.jpg" width="30%">
			<img src="image/thumbs/g_5.jpg" alt="Pic 5" data-largesrc="images/g_5.jpg" width="30%">
			<img src="image/thumbs/g_3.jpg" alt="Pic 3" data-largesrc="images/g_3.jpg" width="30%">
			<img src="image/thumbs/g_4.jpg" alt="Pic 4" data-largesrc="images/g_4.jpg" width="30%">
			<img src="image/thumbs/g_2.jpg" alt="Pic 2" data-largesrc="images/g_2.jpg" width="30%">
			<img src="image/thumbs/g_5.jpg" alt="Pic 3" data-largesrc="images/g_5.jpg" width="30%">
			<img src="image/thumbs/g_2.jpg" alt="Pic 1" data-largesrc="images/g_2.jpg" width="30%">
			<img src="image/thumbs/g_4.jpg" alt="Pic 5" data-largesrc="images/g_4.jpg" width="30%">
			<img src="image/thumbs/g_1.jpg" alt="Pic 3" data-largesrc="images/g_1.jpg" width="30%">
			<img src="image/thumbs/g_3.jpg" alt="Pic 4" data-largesrc="images/g_3.jpg" width="30%">
			<img src="image/thumbs/g_5.jpg" alt="Pic 2" data-largesrc="images/g_5.jpg" width="30%">
			<img src="image/thumbs/g_2.jpg" alt="Pic 2" data-largesrc="images/g_2.jpg" width="30%">
		</div>
	</div>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="js/modernizr-chrg.min.js"></script>
	<script src="js/masonry.min.js"></script>
	<script src="js/chromagallery.js"></script>
	<script type="text/javascript">
		$(document).ready(function() 
		{
		    $(".mygallery").chromaGallery();
		});
	</script>
	</section>
	
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