package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bll.AdminBll;
import Model.Admin;

public class AdLoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String aname=request.getParameter("aname");
		String apass=request.getParameter("apass");
		AdminBll aBll=new AdminBll();
		Admin admin= aBll.getAdmin(aname, apass);
		if(admin==null){
			request.setAttribute("error","用户名或者密码不正确");
			request.getRequestDispatcher("adminlogin.jsp").forward(request, response);
		}else{
			//request.removeAttribute("error");
			request.getSession().setAttribute("admin",admin);
			request.getRequestDispatcher("adminmanage.jsp").forward(request, response);
		}
	}
}
