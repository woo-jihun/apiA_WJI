<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import ="java.util.ArrayList" %>
<%@page import ="jspstudy.domain.*" %>
<% 
ArrayList<BoardVo> alist  = (ArrayList<BoardVo>)request.getAttribute("alist");
PageMaker pm = (PageMaker)request.getAttribute("pm");

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
	;	
	font-family:  'NanumSquare', sans-serif; 
	font-weight: 500;
	
	
}

#listName {
	position: relative;
	top : -30px;
	left : 470px;
		

}

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
    position: relative;
	left : 470px
    
}

#abc {
	position: relative;
	top: 20px;
	left : 120px;
	position: relative;
	left : 600px
	
	
}

table > tr {
	border: 1;
	border-top: 1.5px solid #444444;
}


table > tr > td {
	text-ailgn: center;

	
}

#a {
	width: 50px;
	
	

 }

#frm{
	position: relative;
	top : 10px;	
	left: -100px;
	border: none;


	
 }
 
#numb {
	position: relative;
	left: 500px;
	
}

#wri {
	position: relative;
	left: 770px;


	
}


</style>






<meta charset="UTF-8">
<title>글목록</title>
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
<H1 id="listName">공지사항</H1>


<table id="abcd" >
<tr style="color:#000000; height: 40px; font-size:13px;">
<th id="a">No</th>
<th id="b">제목</th>
<th id="c">글쓴이</th>
<th id="d">작성일</th>
</tr>

<% for (BoardVo bv : alist) {%>
<tr style="font-size:13px; border-top: 0.25px solid #dfdfdf;">
<td style="text-align:center;"><%=bv.getBidx() %></td>
<td style=" padding:0 0 0 15px; ">
<%
for(int i=1;i<=bv.getLevel_();i++){
	out.print("&nbsp;&nbsp;");
	if (i== bv.getLevel_()){
		out.println("ㄴ");
	}	
}
%>
<a href="<%=request.getContextPath() %>/board/boardContent.do?bidx=<%=bv.getBidx() %>"><%=bv.getSubject() %></a>
</td>
<td style="text-align:center; width:150px; height: 36px; "><%=bv.getWriter() %></td>
<td style="text-align:center; width:150px; "><%=bv.getWriteday() %></td>
</tr>
<% } %>

</table>
<table id="abc"  style="width:700px; text-align:center;">
<tr>
<td style="width:200px;text-align:right;">
<% if (pm.isPrev() == true){
	out.println("<a href='"+request.getContextPath()+"/board/boardList.do?page="+(pm.getStartPage()-1)+"&keyword="+pm.encoding(pm.getScri().getKeyword())+"&searchType="+pm.getScri().getSearchType()+"'>◀</a>");
	}
%>  
</td>
<td>

<%
for (int i=pm.getStartPage(); i<= pm.getEndPage();i++){
out.println("<a href='"+request.getContextPath()+"/board/boardList.do?page="+i+"&keyword="+pm.encoding(pm.getScri().getKeyword())+"&searchType="+pm.getScri().getSearchType()+"'>"+i+"</a>");	
}
%>
</td>
<td id="numb"style="width:200px; text-align:center;">

<% if(pm.isNext() && pm.getEndPage() >0) {
	out.println("<a href='"+request.getContextPath()+"/board/boardList.do?page="+(pm.getEndPage()+1)+"&keyword="+pm.encoding(pm.getScri().getKeyword())+"&searchType="+pm.getScri().getSearchType()+"'>▶</a>");	
	}  
%> 
</td>
</tr>
</table>
<form name="frm" id="frm" action="<%=request.getContextPath() %>/board/boardList.do"  method="post">
<table style="width:800px;text-align:right"> 
<tr>
<td style="width:620px;">
<select name="searchType">
<option value="subject">제목</option>
<option value="writer">이름</option>
</select>
</td>
<td>
<input type="text" name="keyword" size ="10">
</td>
<td>
<input type="submit" name="submit" value="검색">
<input type="button" id="wri" name="button" value="작성" onclick="location.href='<%=request.getContextPath() %>/board/boardWrite.do'" >
</td>
</tr>
</table>
</form>
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