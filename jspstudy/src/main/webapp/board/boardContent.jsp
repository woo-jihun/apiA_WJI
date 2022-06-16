<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="jspstudy.domain.BoardVo" %>    
<%
	BoardVo bv = (BoardVo)request.getAttribute("bv");
%>        
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/main.css">
<link rel="stylesheet" href="../css/footer2.css">

   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style media="screen">
      *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
</style>

<style>



#List {
	position: relative;
	left : 350px;	
	font-family:  'NanumSquare', sans-serif; 
	font-weight: 500;
	
	
}

#listName {
	position: relative;
	top : -30px;
	left : 120px;
}

hr {
	position: relative;
	left : 120px;
	width : 1000px;
	
}

table {}


table tr td {
	text-size: 10px;
}

table tr td a {
	color: #000000;
}



#abcd {
	width: 1000px;
	height: 300px;
	border-top: 1px solid #444444;
    border-collapse: collapse;	
    
}

#abc {
	position: relative;
	top: 20px;
	left : 120px;
	
}


table > tr {

	
	
}


table > tr > td {
	text-ailgn: center;
	border: 1;
	border-top: 1.5px solid #444444;
	font-size:13px;
	
}

#a {
	width: 50px;
	

 }

#frm{
	position: relative;
	top : 10px;	
	left: -570px;
	border: none;
	
 }
 
#numb {
	position: relative;
	left: 500px;
}

#wri {
	position: relative;
	left: 770px;

#trd { 
	color:#000000;
	height: 40px;
	font-size:13px;
	style="border-top: 0.25px solid #dfdfdf;"
	
}

subject {
	border: 1;
	border-top: 1.5px solid #444444;


}

#top {
	position: relative;
	top: 20px;
}

textt {
	
}

#aa{
	font-family:  'NanumSquare', sans-serif; 
	
}



</style>

<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<header>   
        <div class="logo"> 
            <a href="../index.jsp"><img src="../image/logo.png" alt="logo" id="logo"></a>         
            </div>      
            
            <nav>
                <ul>
                    <li><a href="../about.jsp">소개</a></li>
                    <li><a href="../gallery.jsp">갤러리</a></li>
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
        <img src="../image/top_background-img.jpg" width="100%" > 
        </div>
        <img src="../image/bg1.jpg" width="1080px" height="100px" Style="border: none;"> 

<section id="List">
<h1  id="listName">상세보기</h1>
<hr size= "1" color="#000000">
<table id="abc"  style="width:1000px;">

<tr style="font-size : 14px;">
<td id="a1" style="width:100px ">제목</td>
<td><%=bv.getSubject() %></td>
</tr>
<tr style="font-size : 14px;">
<td id="bb" >내용</td>
<td style="height:150px;">
<%=bv.getContent() %>

</td>
</tr>
<tr style="font-size : 14px;">
<br>
<td id="cc">작성자</td>
<td><%=bv.getWriter() %></td>
</tr>
<tr>
<td colspan=2 style="text-align:right;">
<input type="button" name="modify" value="수정" onclick="location.href='<%=request.getContextPath()%>/board/boardModify.do?bidx=<%=bv.getBidx()%>'">
<input type="button" name="delete" value="삭제" onclick="location.href='<%=request.getContextPath()%>/board/boardDelete.do?bidx=<%=bv.getBidx()%>'">
<input type="button" name="list" value="목록" onclick="location.href='<%=request.getContextPath()%>/board/boardList.do'">
</td>
</tr>

</table>
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