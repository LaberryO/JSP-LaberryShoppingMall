<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconn.jsp" %>
<%
	try {
		String errorCode;
		String userId = request.getParameter("userId");
		System.out.println(userId);
		String userPW = request.getParameter("userPW");
		
		String sql = "select userId, userPW from member where userId=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, userId);
		rs = pstmt.executeQuery();
		
		if (rs.next()) {
			String dbUserId = rs.getString("userId");
		    String dbUserPW = rs.getString("userPW");
			if (dbUserId == null || dbUserId.isEmpty()) errorCode = "IdNotFound";
			else if (!userPW.equals(dbUserPW)) errorCode = "IncorrectPW";
			else errorCode = null;
			
			if (errorCode == null) {
				session.setAttribute("userId", dbUserId);
				System.out.println("Redirecting with status=login");
				response.sendRedirect("index.jsp?status=login");
			} else {
				System.out.println("Redirecting with status=" + errorCode);
				response.sendRedirect("signInUser.jsp?status="+errorCode);
			}
		} else {
			System.out.println("DB에서 불러올 수 없는 값입니다.");
		}
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
        if (rs != null) rs.close();
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
	}

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