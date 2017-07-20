package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.persistence.criteria.CriteriaBuilder.In;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bll.AdminBll;
import Model.MeiWen;
import Model.Page;
import Model.Ping;

public class HaiJiaoServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		/**
		 * ��ʾ����
		 */
		int id=1;//����һ������id 
		if(request.getParameter("mid")!=null){
			if(request.getParameter("mid")!=null){
				id=Integer.valueOf(request.getParameter("mid"));
			}
			request.getSession().setAttribute("hmid", id);
			MeiWen mei=new AdminBll().getMei(id);
			/**
			 * ��ҳ��ʾ���۹���
			 */
			int currentPage=1;
			int pageCount=5;
			if(request.getParameter("currentPage")!=null){
				currentPage=Integer.valueOf(request.getParameter("currentPage").toString());
			}
			Page pingPage=new AdminBll().getPingPage(currentPage, pageCount,id);
			request.getSession().setAttribute("mei", mei);
			request.setAttribute("ping", pingPage);
			request.getRequestDispatcher("haijiao.jsp").forward(request, response);
		}else{
			if(request.getSession().getAttribute("hmid")!=null){
				id=Integer.valueOf(request.getSession().getAttribute("hmid").toString());
			}
			MeiWen mei=new AdminBll().getMei(id);
			/**
			 * ��ҳ��ʾ���۹���
			 */
			int currentPage=1;
			int pageCount=5;
			if(request.getParameter("currentPage")!=null){
				currentPage=Integer.valueOf(request.getParameter("currentPage").toString());
			}
			Page pingPage=new AdminBll().getPingPage(currentPage, pageCount,id);
			request.getSession().setAttribute("mei", mei);
			request.setAttribute("ping", pingPage);
			request.getRequestDispatcher("haijiao.jsp").forward(request, response);
		}
		
	}

}
