package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bll.UserBll;
import Model.User;

public class UsergServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		if(request.getParameter("id")!=null){
			int uid=Integer.valueOf(request.getParameter("id").toString());
			User u=new UserBll().getU(uid);
			request.setAttribute("gerenu",u);
			request.getRequestDispatcher("ge.jsp").forward(request, response);
		}else{
			request.getRequestDispatcher("HaiJiaoServlet").forward(request, response);
		}
	}

}
