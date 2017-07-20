package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bll.UserBll;
import Model.User;

public class XmimaServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		User user=(User)request.getSession().getAttribute("user");
		int id=user.getId();//获取用户Id
		String name=request.getParameter("name");
		String pass=request.getParameter("pass");
		Object[] params={name,pass,id};
		
		UserBll uBll=new UserBll();
		int i=uBll.upUserMi(params);
		if(i>0){
			request.removeAttribute("error");
			request.getSession().removeAttribute("user");
			request.getRequestDispatcher("login.jsp").forward(request,response);
		}else{
			request.setAttribute("error","修改失败");
			request.getRequestDispatcher("geren.jsp").forward(request, response);
		}
	}

}
