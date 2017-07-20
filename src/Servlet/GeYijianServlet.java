package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bll.UserBll;
import Model.User;
import Model.YiJian;

public class GeYijianServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		User user=(User)request.getSession().getAttribute("user");
		if(user!=null){
			if(request.getAttribute("delyi")!=null){
				String delyi=(String)request.getAttribute("delyi");
				request.setAttribute("delyi",delyi);
			}
			int uid=user.getId();//获取用户id
			UserBll uBll=new UserBll();
			List<YiJian> uyijian=uBll.getYijian(uid);//获取意见内容
			request.setAttribute("uyijian", uyijian);
			request.getRequestDispatcher("geyijian.jsp").forward(request, response);
		}else{
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	
	}

}
