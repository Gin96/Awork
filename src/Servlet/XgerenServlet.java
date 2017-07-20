package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bll.UserBll;
import Model.User;

public class XgerenServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		User user=(User)request.getSession().getAttribute("user");
		String sex=request.getParameter("sex");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String yan=request.getParameter("yan");
		int id=user.getId();
		String name=user.getName();
		String pass=user.getPass();
		Object params[]={sex,email,phone,yan,id};
		UserBll uBll=new UserBll();
		int i=uBll.upUserZi(params);
		if(i>0){
			request.removeAttribute("error");
			User xuser=uBll.getUser(name, pass);
			request.getSession().setAttribute("user",xuser);
			request.getRequestDispatcher("geren.jsp").forward(request, response);
		}else{
			request.setAttribute("error","ÐÞ¸ÄÊ§°Ü");
			request.getRequestDispatcher("xgeren.jsp").forward(request, response);
		}
	}

}
