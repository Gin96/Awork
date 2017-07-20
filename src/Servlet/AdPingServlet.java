package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bll.AdminBll;
import Model.Page;

public class AdPingServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		if(request.getParameter("id")!=null){
			if(request.getAttribute("adelmp")!=null){
				String adelmp=(String) request.getAttribute("adelmp");
				request.setAttribute("adelmp",adelmp);
			}
			int id=Integer.valueOf(request.getParameter("id").toString());
			request.getSession().setAttribute("pmid",id);
			int currentPage=1;
			int pageCount=10;
			if(request.getParameter("currentPage")!=null){
				currentPage=Integer.valueOf(request.getParameter("currentPage").toString());
			}
			Page p=new AdminBll().getPingPage(currentPage, pageCount, id);
			request.getSession().setAttribute("p", p);
			request.getRequestDispatcher("adminpingm.jsp").forward(request, response);
		}else{
			if(request.getAttribute("adelmp")!=null){
				String adelmp=(String) request.getAttribute("adelmp");
				request.setAttribute("adelmp",adelmp);
			}
		
			int id=Integer.valueOf(request.getSession().getAttribute("pmid").toString());
			int currentPage=1;
			int pageCount=10;
			if(request.getParameter("currentPage")!=null){
				currentPage=Integer.valueOf(request.getParameter("currentPage").toString());
			}
			Page p=new AdminBll().getPingPage(currentPage, pageCount, id);
			request.getSession().setAttribute("p", p);
			request.getRequestDispatcher("adminpingm.jsp").forward(request, response);
		}
	}

}
