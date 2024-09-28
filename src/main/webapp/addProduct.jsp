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
<fmt:setLocale value='<%=request.getParameter("language") %>' />
<fmt:bundle basename="bundle.message">
	<%@ include file="nav.jsp" %>
	<div class="container mt-5 pt-5">
		<div class="row mt-5">
			<div class="col-6">
				<h1><fmt:message key="registerProduct" /></h1>
			</div>
			<div class="col-6">
				<a href="?language=ko" class="btn btn-secondary m-1">Korean</a>
				<a href="?language=en" class="btn btn-secondary m-1">English</a>
			</div>
		</div>
		<div class="row">
			<form class="g-3" action="processAddProduct.jsp" method="post" enctype="multipart/form-data" name="registerNewProduct">
				<div class="row m-3">
							<div class="col-2">
								<label for="newProduct" class=""><fmt:message key="productId" /></label>
							</div>
							<div class="col-4">
								<input type="text" class="form-control" id="newProduct" placeholder="" name="newProduct">
							</div>
						</div>
						<div class="row m-3">
							<div class="col-2">
								<label for="productName" class=""><fmt:message key="productName" /></label>
							</div>
							<div class="col-4">
								<input type="text" class="form-control" id="productName"
									placeholder="" name="productName">
							</div>
						</div>
						<div class="row m-3">
							<div class="col-2">
								<label for="unitPrice" class=""><fmt:message key="unitPrice" /></label>
							</div>
							<div class="col-4">
								<input type="text" class="form-control" id="unitPrice" placeholder="" name="unitPrice">
							</div>
						</div>
						<div class="row m-3">
							<div class="col-2">
								<label for="description" class=""><fmt:message key="description" /></label>
							</div>
							<div class="col-4">
								<input type="text" class="form-control" id="description" placeholder="" name="description">
							</div>
						</div>
						<div class="row m-3">
							<div class="col-2">
								<label for="category" class=""><fmt:message key="category" /></label>
							</div>
							<div class="col-4">
								<input type="text" class="form-control" id="category"
									placeholder=""  name="category">
							</div>
						</div>
						<div class="row m-3">
							<div class="col-2">
								<label for="condition" class=""><fmt:message key="condition" /></label>
							</div>
							<div class="col-4">
								<input type="radio" id="New"
									placeholder="" value="New" name="condition" checked>  
								<label for="New"><fmt:message key="condition_New" /></label>
								<input type="radio" id="Old"
									placeholder="" value="Old" name="condition">  
								<label for="Old"><fmt:message key="condition_Old" /></label>
							</div>
						</div>
						<div class="row m-3">
							<div class="col-2">
								<label for="productImage" class=""><fmt:message key="productImage" /></label>
							</div>
							<div class="col-4 d-flex">
								<label><fmt:message key="selectFile" /><input type="file" id="productImage" name="productImage" onchange="updateMessage()" style="display: none"></label>
								<div id="fileMessage" class="ms-2 small align-self-end"><fmt:message key="noFile" /></div> 
							</div>
						</div>
						<div class="row m-3">
							<div class="col-6">
								<button class="btn btn-secondary mb-3 btn-block" onclick="form_check_addProduct()">
									<fmt:message key="button" />
								</button>
								
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
	<script>
	function updateMessage() {
        const input = document.getElementById('productImage');
        const messageDiv = document.getElementById('fileMessage');
        if (input.files.length > 0) {
            messageDiv.textContent = input.files[0].name; // 선택된 파일 이름 표시
        } else {
            messageDiv.textContent = '선택된 파일이 없음'; // 기본 메시지로 설정
        }
    }
	</script>
</body>

</html>