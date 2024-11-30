<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconn.jsp" %>
<%
	try {
		String errorCode = null;
	    String userId = request.getParameter("userId");
	    String userPW = request.getParameter("userPW");
	    System.out.println(userId);
	    
	    // SQL 쿼리 준비
	    String sql = "select userId, userPW from member where userId=?";
	    pstmt = conn.prepareStatement(sql);
	    pstmt.setString(1, userId);
	
	    // 쿼리 실행
	    rs = pstmt.executeQuery();
	    
	    // 쿼리 결과가 없으면 바로 IdNotFound 처리
	    if (!rs.next()) {
	        errorCode = "IdNotFound";  // 아이디가 존재하지 않으면 처리
	        System.out.println("아이디가 존재하지 않습니다.");
	        response.sendRedirect("signInUser.jsp?status=" + errorCode);  // 아이디가 없으면 리디렉션
	    } else {
	        String dbUserId = rs.getString("userId");
	        String dbUserPW = rs.getString("userPW");
	
	        if (!userPW.equals(dbUserPW)) {
	            errorCode = "IncorrectPW";  // 비밀번호가 틀리면 처리
	        }
	
	        if (errorCode == null) {
	            session.setAttribute("userId", dbUserId);  // 로그인 성공 시 세션에 userId 저장
	            System.out.println("Redirecting with status=login");
	            response.sendRedirect("index.jsp?status=login");  // 로그인 성공
	        } else {
	            System.out.println("Redirecting with status=" + errorCode);
	            response.sendRedirect("signInUser.jsp?status=" + errorCode);  // 비밀번호 오류 리디렉션
	        }
	    }
	} catch (SQLException e) {
	    // SQLException 발생 시 예외 처리
	    e.printStackTrace();
	} finally {
	    // 리소스 정리
	    try {
	        if (rs != null) rs.close();
	        if (pstmt != null) pstmt.close();
	        if (conn != null) conn.close();
	    } catch (SQLException e) {
	        e.printStackTrace();  // 리소스 정리 시 발생하는 예외도 처리
	    }
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