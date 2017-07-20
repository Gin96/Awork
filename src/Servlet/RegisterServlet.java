package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bll.UserBll;

public class RegisterServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name=request.getParameter("uname");
		String pass=request.getParameter("upass");
		String sex=request.getParameter("sex");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String address=request.getParameter("address");
		String yan=request.getParameter("yan");
		
		UserBll uBll=new UserBll();
		Object params []={name,pass,sex,email,phone,address,yan};
		int i=uBll.setUser(params);
		if(i>0){
			request.setAttribute("success", "注册成功，欢迎登陆！");
			request.getRequestDispatcher("login.jsp").forward(request, response);;
		}else{
			request.setAttribute("error","用户已存在，可重新注册！");
			request.getRequestDispatcher("zhuce.jsp").forward(request, response);
		}
	}

}
