<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String edit = request.getParameter("edit");
	if (edit.equals("update")) {
		response.sendRedirect("index.jsp#portfolio");
	} else if (edit.equals("delete")) {
		System.out.println(edit);
	} else {
		System.out.println("error");
	}
	
	String update = request.getParameter("update");
	System.out.println(update);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>