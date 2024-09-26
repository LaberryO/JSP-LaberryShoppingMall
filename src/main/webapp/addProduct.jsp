<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Product" %>  
<%@ page import="dao.ProductRepository" %>  
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
</head>

<body>
<fmt:setLocale value="<%=request.getParameter(language) %>" />
<fmt:bundle basename="bundle.message">
	<%@ include file="nav.jsp" %>
	<div class="container mt-5 pt-5">
		<div class="row mt-5">
			<h1>상품 등록</h1>
		</div>
		<div class="row">
			<form class="g-3" action="processAddProduct.jsp" method="post" enctype="multipart/form-data" name="registerNewProduct">
				<div class="row m-3">
							<div class="col-2">
								<label for="newProduct" class=""><fmt:message key="title" /></label>
							</div>
							<div class="col-4">
								<input type="text" class="form-control" id="newProduct" placeholder="" name="newProduct">
							</div>
						</div>
						<div class="row m-3">
							<div class="col-2">
								<label for="productName" class="">상품명</label>
							</div>
							<div class="col-4">
								<input type="text" class="form-control" id="productName"
									placeholder="" name="productName">
							</div>
						</div>
						<div class="row m-3">
							<div class="col-2">
								<label for="unitPrice" class="">상품 가격</label>
							</div>
							<div class="col-4">
								<input type="text" class="form-control" id="unitPrice" placeholder="" name="unitPrice">
							</div>
						</div>
						<div class="row m-3">
							<div class="col-2">
								<label for="description" class="">상세 정보</label>
							</div>
							<div class="col-4">
								<input type="text" class="form-control" id="description" placeholder="" name="description">
							</div>
						</div>
						<div class="row m-3">
							<div class="col-2">
								<label for="category" class="">분류</label>
							</div>
							<div class="col-4">
								<input type="text" class="form-control" id="category"
									placeholder=""  name="category">
							</div>
						</div>
						<div class="row m-3">
							<div class="col-2">
								<label for="condition" class="">제품 상태</label>
							</div>
							<div class="col-4">
								<input type="radio" id="New"
									placeholder="" value="New" name="condition" checked>  
								<label for="New">신제품</label>
								<input type="radio" id="Old"
									placeholder="" value="Old" name="condition">  
								<label for="Old">중고품</label>
							</div>
						</div>
						<div class="row m-3">
							<div class="col-2">
								<label for="productImage" class="">상품 이미지 등록</label>
							</div>
							<div class="col-4">
								<input type="file" id="productImage"
									name="productImage"> 
							</div>
						</div>
						<div class="row m-3">
							<div class="col-6">
								<input type="button" class="btn btn-secondary mb-3 btn-block" value="등록" onclick="form_check_addProduct()">
							</div>
						</div>
			</form>
		</div>
	</div>
	<%@ include file="footer.jsp" %>
</fmt:bundle>
	<!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
	
	<script src="js/validation.js"></script>
</body>

</html>