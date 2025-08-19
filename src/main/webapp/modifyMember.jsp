<%@page import="com.kmii.dto.MemberDto"%>
<%@page import="com.kmii.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
</head>
<body>

	<%
	
			String sid = (String) session.getAttribute("sessionId");
			if(sid==null){
				out.println("<script>alert(로그인 하지 않은 유저는 수정 페이지 접근 불가);window.location.href='loginMember.jsp';</script>");   //window.location.href="" : 특정페이지 이동
			} else {
	
			MemberDao memberDao = new MemberDao();
			MemberDto memberDto =	memberDao.getMemberInfo((String)session.getAttribute("sessionId"));   // 중요! - 이해하기
			
			request.setAttribute("memberDto", memberDto);
	
			}
	%>


	<h2>회원 정보 수정</h2>
	<hr>
	<form action="modifyMemberOk.jsp" method="post">
		아이디 : <input type="text" name="memeberid" value="${memberDto.memberid}" readonly="readonly"><br><br>  
		비밀번호 : <input type="password" name="memberpw" value="${memberDto.memberpw}"><br><br>
		이름 : <input type="text" name="membername" value="${memberDto.membername}"><br><br>
		나이 : <input type="text" name="memberage" value="${memberDto.memberage}"><br><br>
		이메일 : <input type="text" name="memberemail" value="${memberDto.memberemail}"><br><br>
		회원 등록일 :<input type="text" name="memberdate" value="${memberDto.memberdate}" readonly="readonly"><br><br>
		<input type="submit" value="정보 수정">
	</form>

</body>
</html>