<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import ="jspstudy.domain.*" %>   
<%@ page import = "java.util.*" %> 
<%
	//select 쿼리를 사용하기 위해서 function에서 메소드를 만든다
	//memberSelectAll 메소드 호출한다
	//MemberDao md = new MemberDao();
//	ArrayList<MemberVo> alist = md.memberSelectAll() ;
//	out.println(alist.get(0).getMembername()+"<br>");

    ArrayList<MemberVo> alist=(ArrayList<MemberVo>)request.getAttribute("alist");
	
%>  

<%@ page import="jspstudy.dbconn.Dbconn" %>
 
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/slider.css">



<meta charset="UTF-8">
<title>앙쥬레브1111</title>

   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style media="screen">
      *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
</style>

<style type="text/css">



.contents01, .contents02, .contents03{ width: 100%; height: 70px; background-color: white; }
            
#fixed01{
	width: 100%; height: 300px;                       
	background-image: url(image/fixed01.jpg);
	background-repeat: no-repeat; 
	background-size: cover;
	background-position: center; 
	background-attachment: fixed; 
}

</style>


</head>
<body>

<% // 객체생성 테스트
Dbconn dbconn = new Dbconn();
System.out.println("Dbconn"+dbconn);
%>


        <header>   
        <div class="logo"> 
            <a href="index.jsp"><img src="image/logo.png" alt="logo" id="logo"></a>         
            </div>      
            
            <nav>
                <ul>
                    <li><a href=" about.jsp">소개</a></li>
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



<br>


<section class="carousel" aria-label="Gallery">
  <ol class="carousel__viewport">
    <li id="carousel__slide1"
        tabindex="0"
        class="carousel__slide">
        
      <div id="carousel__snapper">
        <a href="#carousel__slide3"
           class="carousel__prev">Go to last slide</a>
        <a href="#carousel__slide2"
           class="carousel__next">Go to next slide</a>
           <img src="image/main_img01.jpg" alt="si" id="si" width: 100%>
      </div>
    </li>
       
    <li id="carousel__slide2"
        tabindex="0"
        class="carousel__slide">
      <div id="carousel__snapper">
      <a href="#carousel__slide1"
         class="carousel__prev">Go to previous slide</a>
      <a href="#carousel__slide3"
         class="carousel__next">Go to next slide</a>
	
	</div>
    </li>
             
    <li id="carousel__slide3"
        tabindex="0"
        class="carousel__slide">
      <div id="carousel__snapper"></div>
      <a href="#carousel__slide2"
         class="carousel__prev">Go to previous slide</a>
      <a href="#carousel__slide1"
         class="carousel__next">Go to next slide</a>
    </li>

  </ol>
  <aside class="carousel__navigation">
    <ol class="carousel__navigation-list">
      <li class="carousel__navigation-item">
        <a href="#carousel__slide1"
           class="carousel__navigation-button">Go to slide 1</a>
      </li>
      <li class="carousel__navigation-item">
        <a href="#carousel__slide2"
           class="carousel__navigation-button">Go to slide 2</a>
      </li>
      <li class="carousel__navigation-item">
        <a href="#carousel__slide3"
           class="carousel__navigation-button">Go to slide 3</a>
      </li>
    </ol>
  </aside>
</section>



<br>
<div class="abo">
<h2 class="abo"> 앙쥬레브 소개</h2>
<br>

<div class="abo_mi"><h3>앙쥬레브의 의미는 불어 ange(천사) + reve(꿈) 의 합성어입니다.<br>
반려견 천사들의 꿈이 펼쳐지는 즐거운 반려견 복합문화 공간입니다.<br><br>

소형견 위주의 애견 카페/호텔/유치원으로 소중한 강아지 천사들을 위한<br> 
서비스가 제공되며 고급스럽고 따뜻한 느낌을 지향합니다.</h3></div>

</div>

<br>
<div class="abo1">
<img src="image/main_abo02.jpg" width="20%" >  
<img src="image/main_abo01.jpg" width="20%" >  
<img src="image/main_abo03.jpg" width="20%" >  
</div>
 
<img src="image/bg1.jpg" width="70%" > 

<br>
    <main></main>
	<div class="contents01"></div>
	<section id="fixed01">
	

	<div class="contents02"></div>
	</section>

<img src="image/bg1.jpg" width="50%" >

<section id="mabo">
<div class="mabo_img"><img src="image/about.jpg" width="65%" ></div>
<div class="iu1"><h3>이용안내</h3></div>
<div class="iu2"><h3>예방접종 5차가 안된 아가들은 출입 어렵고<br>
간식나눔은 알레르기 예방 차원에서 항상 <br>
다른 견주님들께 확인 부탁드립니다
</h3></div>
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