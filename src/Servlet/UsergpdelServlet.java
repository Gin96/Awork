package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bll.UserBll;

public class UsergpdelServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		if(request.getParameter("id")!=null){
			int id=Integer.valueOf(request.getParameter("id").toString());
			int i=new UserBll().delPing(id);
			if(i>0){
				request.getSession().setAttribute("delgp", "评论删除成功！");
				request.getRequestDispatcher("UserpServlet").forward(request, response);
			}else{
				request.setAttribute("delgp", "网络开小差了，删除评论失败！");
				request.getRequestDispatcher("UserpServlet").forward(request, response);
			}
		}
	}

}
