<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<HTML>
 <HEAD>
 <link rel="stylesheet" href="../css/Join.css">
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <TITLE> New Document </TITLE> 
  <script>
  function check(){
  //	alert("테스트");
  	
  	var fm = document.frm;
  	
  	if (fm.memberId.value ==""){
  		alert("아이디를 입력하세요");
  		fm.memberId.focus();
  		return;
  	}else if (fm.memberPwd.value ==""){
  		alert("비밀번호를 입력하세요");
  		fm.memberPwd.focus();
  		return;
  	}else if (fm.memberPwd2.value ==""){
  		alert("비밀번호 확인을 입력하세요");
  		fm.memberPwd2.focus();
  		return;
  	}else if (fm.memberPwd.value != fm.memberPwd2.value){
  		alert("비밀번호가 일치하지 않습니다.");
  		fm.memberPwd2.value = "";
  		fm.memberPwd2.focus();
  		return;
  	}else if (fm.memberName.value == ""){
  		alert("이름을 입력하세요");  		
  		fm.memberName.focus();
  		return;
  	}else if (fm.memberEmail.value == ""){
  		alert("이메일을 입력하세요");  		
  		fm.memberEmail.focus();
  		return;  	
  	} 
  		
  	
 	
  	
  		// 가상경로를 사용해서 페이지 이동시킨다
  	//	fm.action = "./memberJoinOk.jsp";
  		fm.action = "<%=request.getContextPath()%>/member/memberJoinAction.do";
  		fm.method = "post";
  		fm.submit();
  	
  
   return;
  }
  
  </script>
 </HEAD>

 <BODY>
<section id="join">
<form name="frm">
<h2 class="joi">회원가입</h2><br>
<input type="text" style="padding-left: 10px;" id="memberId" name="memberId" placeholder="아이디"><br>
<br>
<input type="password" style="padding-left: 10px;" id="memberPwd" name="memberPwd" placeholder="비밀번호"><br>
<br>
<input type="password" style="padding-left: 10px;" id="memberPwd2" name="memberPwd2" placeholder="비밀번호 확인"><br>
<br>
<input type="text" style="padding-left: 10px;" id="memberName" name="memberName" placeholder="이름"><br>
<br>
<input type="email" style="padding-left: 10px;" id="memberEmail" name="memberEmail" placeholder="이메일"><br>
<br>

<input type="text" style="padding-left: 10px;" id="memberPhone" name="memberPhone" placeholder="연락처"> <span class="phone">-</span>
<input type="text" id="memberPhone" name="memberPhone" > -
<input type="text" id="memberPhone" name="memberPhone"><br>
<br>
<br>
<input type="button" style="padding-left: 10px;" id="btn" name ="btn" value="가입" onclick="check();"> 

</form>
</section>
 </BODY>
</HTML>