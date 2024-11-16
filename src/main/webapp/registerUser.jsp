<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Agency - Start Bootstrap Theme</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
</head>
<fmt:setLocale value='<%=request.getParameter("language") %>' />
<fmt:bundle basename="bundle.message">
	<body>
		<%@ include file="nav.jsp"%>
		<%@ include file="dbconn.jsp"%>
		<div class="container mt-5 pt-5">
			<div class="row mt-5">
				<div class="col-6">
					<h1>
						<fmt:message key="registerUser" />
					</h1>
				</div>
			</div>
			<div class="row">
				<form class="g-3" action="processUser.jsp" method="post"
					enctype="utf-8" name="registerUser">
					<div class="row m-3">
						<div class="col-2">
							<label for="userId" class=""><fmt:message
									key="userId" /></label>
						</div>
						<div class="col-4">
							<input type="text" class="form-control" id="userId"
								placeholder="" name="userId">
						</div>
					</div>
					<div class="row m-3">
						<div class="col-2">
							<label for="userPW" class=""><fmt:message
									key="userPW" /></label>
						</div>
						<div class="col-4">
							<input type="password" class="form-control" id="userPW"
								placeholder="" name="userPW">
						</div>
					</div>
					<div class="row m-3">
						<div class="col-2">
							<label for="userName" class=""><fmt:message
									key="userName" /></label>
						</div>
						<div class="col-4">
							<input type="text" class="form-control" id="userName"
								placeholder="" name="userName">
						</div>
					</div>
					<div class="row m-3">
						<div class="col-2">
							<label for="userPhone" class=""><fmt:message
									key="userPhone" /></label>
						</div>
						<div class="col-4">
							<input type="text" class="form-control" id="userPhone"
								placeholder="" name="userPhone">
						</div>
					</div>
					<div class="row m-3">
						<div class="col-2">
							<label for="userAddr" class=""><fmt:message
									key="userAddr" /></label>
						</div>
						<div class="col-4">
							<input type="text" class="form-control" id="userAddr"
								placeholder="" name="userAddr">
						</div>
					</div>
					<div class="row m-3">
						<div class="col-2">
							<label for="userBirth" class=""><fmt:message
									key="userBirth" /></label>
						</div>
						<div class="col-4">
							<select id="birthYear" name="birthYear"></select>
							<select id="birthMonth" name="birthMonth" class="ms-2"></select>
							<select id="birthDay" name="birthDay" class="ms-2"></select>
						</div>
					</div>
					<%-- <div class="row m-3">
						<div class="col-2">
							<label for="productImage" class=""><fmt:message
									key="productImage" /></label>
						</div>
						<div class="col-4 d-flex">
							<label><span
								style="border: 1px solid black; cursor: pointer;" class="p-1"><fmt:message
										key="selectFile" /></span><input type="file" id="productImage"
								name="productImage" onchange="updateMessage()"
								style="display: none"></label>
							<div id="fileMessage" class="ms-2 small align-self-end">
								<fmt:message key="noFile" />
							</div>
						</div>
					</div> --%>
					<div class="row m-3">
						<div class="col-2">
							<label for="userEmail" class=""><fmt:message
									key="userEmail" /></label>
						</div>
						<div class="col-4">
							<input type="text" class="form-control" id="userEmail"
								placeholder="example@email.com" name="userEmail">
						</div>
					</div>
					<div class="row m-3">
						<div class="col-6">
							<button class="btn btn-secondary mb-3 btn-block"
								onclick="form_check_addUser()">
								<fmt:message key="button" />
							</button>

						</div>
					</div>
				</form>
			</div>
		</div>
		<%@ include file="footer.jsp"%>
		<!-- Bootstrap core JS-->
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
		<!-- Core theme JS-->
		<script src="js/scripts.js"></script>
		<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
		<!-- * *                               SB Forms JS                               * *-->
		<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
		<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
		<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
		<script src="js/birthDate.js"></script>
		<script src="js/validation.js"></script>
	</body>
</fmt:bundle>
</html>