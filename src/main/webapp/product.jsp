<%@page import="dto.Product"%>
<%@page import="dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Agency - Start Bootstrap Theme</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <script>
        	function addToCart() {
        		if(confirm("상품을 추가하시겠습니까?")) {
        			document.addForm.submit();
        		} else {
        			document.addForm.reset();
        		}
        	}
        </script>
</head>
<fmt:setLocale value='<%=request.getParameter("language") %>' />
<fmt:bundle basename="bundle.message">
<body id="page-top">
	<%@ include file="nav.jsp" %>
	<div class="container mt-5 pt-5">
		<div class="row mt-5">
			<div class="col-6">
				<h1><fmt:message key="productInfo" /></h1>
			</div>
			<div class="col-6">
				<a class="btn btn-secondary m-1" onclick="changeLanguage('ko')">Korean</a>
				<a class="btn btn-secondary m-1" onclick="changeLanguage('en')">English</a>
			</div>
		</div>
		<%
			String id = request.getParameter("id");
			ProductRepository dao = ProductRepository.getInstance();
			Product product = dao.getProductById(id);
		%>
		<div class="row">
			<div class="col-md-6">
				<img src="assets/img/product/<%=product.getFileName() %>" class="img-fluid">
			</div>
			<div class="col-md-6">
	  			<h3><%=product.getProductName() %></h3>
	  			<p><%=product.getDescription() %></p>
	  			<p><b><fmt:message key="productId" /> : </b><span><%=product.getProductId() %></span></p>
	  			<p><b><fmt:message key="category" /> : </b><span><%=product.getCategory() %></span></p>
	  			<p><b><fmt:message key="condition" /> : </b><span><%=product.getCondition() %></span></p>
	  			<p><b><fmt:message key="unitPrice" /> : </b><span><%=product.getUnitPrice() %></span></p>
  				<p>
  					<button class="btn btn-info" onclick="addToCart()"><fmt:message key="addToCart" /></button>
  					<button class="btn btn-danger"><fmt:message key="intoCart" /> &raquo;</button>
  					<a href="index.jsp#portfolio" class="btn btn-secondary"><fmt:message key="returnProduct" /> &raquo;</a>
  				</p>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp" %>
	<!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    <script>
    function changeLanguage(language) {
        const urlParams = new URLSearchParams(window.location.search);
        urlParams.set('language', language); // 'language' 파라미터를 설정 또는 추가
        window.location.search = urlParams.toString(); // 수정된 쿼리 문자열로 페이지 리로드
    }
    </script>
</body>
</fmt:bundle>
</html>