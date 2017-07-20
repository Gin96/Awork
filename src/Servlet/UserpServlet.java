package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bll.UserBll;
import Model.Ping;
import Model.User;
/*用户评论箱*/
public class UserpServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		User user=(User)request.getSession().getAttribute("user");
		if(user!=null){
			int uid=user.getId();
			List<Ping> plist=new UserBll().getPingx(uid);
			request.setAttribute("uping", plist);
			request.getRequestDispatcher("geping.jsp").forward(request, response);
		}else{
			request.setAttribute("error", "请先登录，再进入个人评论箱");
		}
		
	}
}
