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
    // 로그아웃 버튼을 누르면 오게되는 곳인데
    // session을 재시작해서 저장된 정보를 날린다
    session.invalidate();
    // 그리고 다시 LOGIN.jsp로 돌아가게 한다
    /* response.sendRedirect("index_TEST_Sl.jsp"); */
    /* request.getHeader("referer"); */
    response.sendRedirect("index.jsp");
    %>
	view 밖 JSP
</body>
</html>