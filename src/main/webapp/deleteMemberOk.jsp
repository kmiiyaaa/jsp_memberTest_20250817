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
			MemberDao memberDao = new MemberDao();

			int idDelete = memberDao.deleteId(request.getParameter("deletedid"));
		
		
			if(idDelete == MemberDao.MEMBER_DELETE_OK) {
				out.println("<script>alert('아이디  삭제 성공');</script>");
				
			} else {
				out.println("<script>alert('아이디 삭제 실패');history.go(-1);</script>");
			}
			
			
			/*
				if(idDelete == MemberDao.MEMBER_DELETE_NO){
					out.println("<script>alert('아이디 삭제 실패');</script>");
				} else {
					int deleteResult = memberDao.insertMember(memberDto); //1(성공), 0(실패)
					
					if(deleteResult == MemberDao.MEMBER_DELETE_OK){  
							out.println("<script>alert('아이디  삭제 성공');</script>");
					
					} else {
						out.println("<script>alert('회원 가입 실패');history.go(-1);</script>");  // history.go(-1) : 이전페이지로
						
					}
					
				}
			*/
				
		%>
		

</body>
</html>