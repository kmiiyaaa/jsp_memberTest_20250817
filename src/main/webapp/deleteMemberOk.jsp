<%@page import="com.kmii.dto.MemberDto"%>
<%@page import="com.kmii.dao.MemberDao"%>
<jsp:useBean id="memberDto" class="com.kmii.dto.MemberDto"/>
<jsp:setProperty property="*" name="memberDto"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
			// String mid = request.getParameter("deletedid");  위에 usebean안썼을때 

			MemberDao memberDao = new MemberDao();
			int idDelete = memberDao.deleteId(request.getParameter("deletedid"));
			// int idDelete = memberDao.deleteId(mid); 위에 usebean안썼을때 
		
			if(idDelete == MemberDao.MEMBER_DELETE_OK) {
				out.println("<script>alert('아이디  삭제 성공');</script>");
				
			} else {
				out.println("<script>alert('아이디 삭제 실패');history.go(-1);</script>");
			}
			
			
				
		%>
		

</body>
</html>