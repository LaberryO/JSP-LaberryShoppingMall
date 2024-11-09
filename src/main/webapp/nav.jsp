<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>        
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value='<%=request.getParameter("language") %>' />
<fmt:bundle basename="bundle.message">
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav" style="background-color: black">
            <div class="container">
                <a class="navbar-brand" href="index.jsp"><img src="assets/img/navbar-logo.svg" alt="..." /></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars ms-1"></i>
                </button>
                <div class="collapse navbar-collapse d-flex justify-content-center" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase py-4 py-lg-0">
                        <li class="nav-item"><a class="nav-link" href="#services"><fmt:message key="whatService" /></a></li>
                        <li class="nav-item"><a class="nav-link" href="#portfolio"><fmt:message key="whatProduct" /></a></li>
                        <li class="nav-item"><a class="nav-link" href="#about"><fmt:message key="whatAbout" /></a></li>
                        <li class="nav-item"><a class="nav-link" href="#team"><fmt:message key="whatTeam" /></a></li>
                        <li class="nav-item"><a class="nav-link" href="#contact"><fmt:message key="whatContact" /></a></li>
                        <li class="nav-item dropdown">
                        	<a class="nav-link dropdown-toggle" href="" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"><fmt:message key="registerProduct" /></a>
                        	<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        		<li><a class="dropdown-item" href="addProduct.jsp"><fmt:message key="registerProduct" /></a></li>
                        		<li><a class="dropdown-item" href="editProduct.jsp?edit=update"><fmt:message key="updateProduct" /></a></li>
                        		<li><a class="dropdown-item" href="editProduct.jsp?edit=delete"><fmt:message key="deleteProduct" /></a></li>
                        	</ul>
                        </li>
                    </ul>
                    <div class="col-4" align="right">
                    	<a class="btn btn-secondary m-1" onclick="changeLanguage('ko')"><fmt:message key="korean" /></a>
						<a class="btn btn-secondary m-1" onclick="changeLanguage('en')"><fmt:message key="english" /></a>
                    </div>
                </div>
            </div>
        </nav>
        
</fmt:bundle>
<script src="js/language.js"></script>