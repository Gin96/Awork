package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bll.AdminBll;
import Model.Admin;
import Model.Page;

public class AdManageuServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		Admin admin=(Admin)request.getSession().getAttribute("admin");
		if(admin!=null){
			int currentPage=1;
			int pageCount=8;
			if(request.getParameter("currentPage")!=null){
				currentPage=Integer.valueOf(request.getParameter("currentPage").toString());
			}
			Page userPage=new AdminBll().getPageUser(currentPage, pageCount);
			request.setAttribute("userPage",userPage);
			request.getRequestDispatcher("adminmanageuser.jsp").forward(request, response);
		}else{
			request.setAttribute("error", "ÇëÏÈµÇÂ¼");
			request.getRequestDispatcher("adminlogin.jsp").forward(request, response);
		}
	}

}
