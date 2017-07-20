package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.User;

public class GerenServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		User user=(User)request.getSession().getAttribute("user");
		if(user!=null){
			request.getRequestDispatcher("geren.jsp").forward(request, response);
		}else{
			request.setAttribute("error", "请先登录，再进入个人中心");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

}
