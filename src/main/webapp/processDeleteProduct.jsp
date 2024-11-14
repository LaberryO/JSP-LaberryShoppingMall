<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconn.jsp" %>
<%
	String id = request.getParameter("id");
	
	if (id != null) {
		String deleteSQL = "delete from cart where userId=? and productId=?";
		pstmt = conn.prepareStatement(deleteSQL);
		pstmt.setString(1, tempUser);
		pstmt.setString(2, id);	
		System.out.println(id+"를 삭제했습니다.");
	} else {
		String deleteSQL = "delete from cart where userId=?";
		pstmt = conn.prepareStatement(deleteSQL);
		pstmt.setString(1, tempUser);
		System.out.println("모든 항목을 삭제했습니다.");
	}
	
	pstmt.executeUpdate();
	response.sendRedirect("cart.jsp");
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