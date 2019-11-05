package com.exercise31session.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html charset='utf-8'");
		PrintWriter output = response.getWriter();
		
		String username = request.getParameter("txtUsername");
		String password = request.getParameter("txtPassword");
		
		output.println("Username:"+username);
		output.println("Password:"+password);
		
		//Accederiamos a la base de datos
		if(username.equals("admin") && password.equals("admin"))
		{
			HttpSession miSesion = request.getSession();
			miSesion.setAttribute("user", username);
			miSesion.setAttribute("pass", password);
			output.println("Usuario Logueado");
			//response.sendRedirect("welcome.jsp");
		}
		else
		{
			output.println("Usuario y contraseña incorrectos");
		}
		
		output.close();
	}

}
