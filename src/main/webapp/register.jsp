<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="reg" method="post">
Name<input type="text" name="name"><br>
Phone<input type="tel" name="phone"><br>
Email<input type="email" name="email"><br>
Age<input type="number" name="age"><br>
Gender<input type="radio" name="gender" value="Male">Male
<input type="radio" name="gender" value="Female">Female<br>
Password<input type="password" name="password">
<input type="submit" name="Register">

</form>
</body>
</html>