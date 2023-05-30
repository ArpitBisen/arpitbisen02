package org.jsp.userproduct.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsp.userproduct.dao.UserDao;
import org.jsp.userproduct.dto.User;
@WebServlet("/reg")
public class RegisterServlet extends HttpServlet{
	@Override
    protected void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException {
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		String gender=req.getParameter("gender");
		int age=Integer.parseInt(req.getParameter("age"));
		long phone =Long.parseLong(req.getParameter("phone"));
		User u=new User();
		u.setAge(age);
		u.setPassword(password);
		u.setPhone(phone);
		u.setEmail(email);
		u.setName(name);
		u.setGender(gender);
		UserDao dao=new UserDao();
		u=dao.saveUser(u);
		PrintWriter writer=resp.getWriter();
		writer.write("<html><body><h2>User registered with Id:"+u);
	}
}
