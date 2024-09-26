<%@page import="dto.Product"%>
<%@page import="dao.ProductRepository"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%
	request.setCharacterEncoding("UTF-8");

	String realFolder = application.getRealPath("assets/img/product/");
	String encType = "UTF-8";
	int maxSize = 5 * 1024 * 1024;
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
	String productId = multi.getParameter("newProduct");
	String productName = multi.getParameter("productName");
    String unitPrice = multi.getParameter("unitPrice");
    String description = multi.getParameter("description");
    String category = multi.getParameter("category");
    String condition = multi.getParameter("condition");
    
    int price;
    if(unitPrice.isEmpty()) price = 0;
    else price = Integer.valueOf(unitPrice);
    
    Enumeration files = multi.getFileNames();
    String fname = (String)files.nextElement();
    String fileName = multi.getFilesystemName(fname);
    
    ProductRepository dao = ProductRepository.getInstance();
    
    Product newProduct = new Product();
    newProduct.setProductId(productId);
    newProduct.setProductName(productName);
    newProduct.setUnitPrice(price);
    newProduct.setDescription(description);
    newProduct.setCategory(category);
    newProduct.setCondition(condition);
    newProduct.setFileName(fileName);
    
    dao.addProduct(newProduct);
    System.out.print(newProduct.getProductId());
    System.out.print("test");
    System.out.print(dao);
    response.sendRedirect("index.jsp");
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