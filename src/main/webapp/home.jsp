<%@page import="org.jsp.userproduct.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
User user =(User) session.getAttribute("user");
if(user!=null){
%>
<h2>
Welcome Mr.<%=user.getName()%></h2>
<h3>
<a href="editUser.jsp">Edit Your Profile </a>
</h3>
<h3 ><a href="viewUser.jsp">View Your Profile</a> </h3>
<h3> <a href="delete">Delete Your Profile</a> </h3>
<h3 > <a href="logout">Logout</a></h3>
<h3 ><a href="addProduct.jsp">Add Product</a></h3>
<h3><a href="viewProduct">View Product</a></h3>
<% }else{
	response.sendRedirect("login.jsp");
}

%>
</body>
</html>