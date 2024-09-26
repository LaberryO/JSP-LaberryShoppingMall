<%@page import="dto.Product"%>
<%@page import="dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</head>
<body id="page-top">
	<%@ include file="nav.jsp" %>
	<div class="container mt-5 pt-5">
		<div class="row mt-5">
			<h1>상세 정보</h1>
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
	  			<p><b>상품코드 : </b><span><%=product.getProductId() %></span></p>
	  			<p><b>분류 : </b><span><%=product.getCategory() %></span></p>
	  			<p><b>제품상태 : </b><span><%=product.getDescription() %></span></p>
	  			<p><b>제품가격 : </b><span><%=product.getUnitPrice() %></span></p>
  				<p>
  					<a href="#" class="btn btn-info">상품 주문 &raquo;</a>
  					<a href="index.jsp#portfolio" class="btn btn-secondary">상품 목록 &raquo;</a>
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
</body>
</html>