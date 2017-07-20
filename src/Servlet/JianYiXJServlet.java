package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bll.AdminBll;
import Model.Page;
import Model.YiJian;

public class JianYiXJServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int currentPage=1;
		int pageCount=8;
		if(request.getParameter("currentPage")!=null){
			currentPage=Integer.valueOf(request.getParameter("currentPage").toString());
		}
		Page pagej=new AdminBll().getPagej(currentPage, pageCount);
		List<YiJian> listj=pagej.getList();
		request.setAttribute("page",pagej);
		request.getRequestDispatcher("adminyijianj.jsp").forward(request, response);
	}

}
