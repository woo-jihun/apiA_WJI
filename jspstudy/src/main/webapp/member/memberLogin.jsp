<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
<link rel="stylesheet" href="../css/Login.css">

 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<script>
function check(){
  	
  	var fm = document.frm;
  	
  	if (fm.memberId.value ==""){
  		alert("아이디를 입력하세요");
  		fm.memberId.focus();
  		return;
  	}else if (fm.memberPwd.value ==""){
  		alert("비밀번호를 입력하세요");
  		fm.memberPwd.focus();
  		return;
  	}  		
  	
  		// 가상경로를 사용해서 페이지 이동시킨다
  		//fm.action = "<%=request.getContextPath()%>/member/memberLoginAction.do";
  		fm.method = "post";
  		fm.submit();
  	
  
  }

</script>

</head>
<body>
<section id="Login">
<form name="frm" action="<%=request.getContextPath()%>/member/memberLoginAction.do">
<h2 class="Log">로그인</h2><br>
<input type="text" style="padding-left: 10px;" id="memberId" name="memberId" placeholder="아이디"><br>
<br>
<input type="password" style="padding-left: 10px;" id="memberPwd" name="memberPwd" placeholder="비밀번호"><br>
<p class="a">아이디 찾기 &#124;</p>
<p class="b">비밀번호 찾기 &#124;</p>
<p class="c"><a href="<%=request.getContextPath() %>/member/memberJoin.do">회원가입</a></p>
<br>
<br>
<input type="button" id ="btn" name ="btn"  value="로그인" onclick="check();"> 

</form>
</section>

</body>
</html>
