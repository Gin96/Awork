package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bll.AdminBll;
import Model.Admin;
import Model.Page;
import Model.YiJian;

public class JianYiXServlet extends HttpServlet {

	
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
			Page pages=new AdminBll().getPages(currentPage, pageCount);
			request.setAttribute("page",pages);
			request.getRequestDispatcher("adminyijian.jsp").forward(request, response);
		}else{
			request.setAttribute("error","ÇëÏÈµÇÂ¼");
			request.getRequestDispatcher("adminlogin.jsp").forward(request,response);
		}
	}
}
