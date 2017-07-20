package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bll.UserBll;
import Model.MeiWen;
import Model.User;

public class UserpingServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		User user=(User)request.getSession().getAttribute("user");
		if(user!=null){
			/**
			 * 添加评论功能
			 */
			int uid=user.getId();//获取用户id
			String name=user.getName();//获取用户名字
			MeiWen mei=(MeiWen)request.getSession().getAttribute("mei");
			int mid=mei.getId();
			String content=request.getParameter("content");
			int i=new UserBll().setPing(name,content,uid,mid);
			if(i>0){
				request.removeAttribute("error");
				request.setAttribute("success","您的评论已成功收录！");
				request.getRequestDispatcher("HaiJiaoServlet").forward(request, response);
			}else{
				request.setAttribute("error", "网络开小差了，请您稍后评论!");
				request.getRequestDispatcher("haijiao.jsp").forward(request, response);
			}
		}else{
			request.setAttribute("error","登录后才能评论");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

}
