package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bll.AdminBll;

public class AdMeidelServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int id=Integer.valueOf(request.getParameter("id").toString());
		int i=new AdminBll().delMei(id);
		if(i>0){
			request.setAttribute("addmei","删除成功！");
			request.getRequestDispatcher("AdMeiServlet").forward(request, response);
		}else{
			request.setAttribute("addmei","网络开小差了，请稍后删除！");
			request.getRequestDispatcher("AdMeiServlet").forward(request, response);
		}
	}

}
