package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bll.AdminBll;

public class AdMeiPdelServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		if(request.getParameter("id")!=null){
			int id=Integer.valueOf(request.getParameter("id"));
			int i=new AdminBll().delMeip(id);
			if(i>0){
				request.setAttribute("adelmp", "删除成功！");
				request.getRequestDispatcher("AdPingServlet").forward(request, response);
			}else{
				request.setAttribute("adelmp", "网络开小差了，请稍后删除！");
				request.getRequestDispatcher("AdPingServlet").forward(request, response);
			}
		}else{
			request.setAttribute("adelmp", "网络开小差了，请稍后删除！");
			request.getRequestDispatcher("AdPingServlet").forward(request, response);
		}
	}

}
