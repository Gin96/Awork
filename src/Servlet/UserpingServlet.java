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
			 * ������۹���
			 */
			int uid=user.getId();//��ȡ�û�id
			String name=user.getName();//��ȡ�û�����
			MeiWen mei=(MeiWen)request.getSession().getAttribute("mei");
			int mid=mei.getId();
			String content=request.getParameter("content");
			int i=new UserBll().setPing(name,content,uid,mid);
			if(i>0){
				request.removeAttribute("error");
				request.setAttribute("success","���������ѳɹ���¼��");
				request.getRequestDispatcher("HaiJiaoServlet").forward(request, response);
			}else{
				request.setAttribute("error", "���翪С���ˣ������Ժ�����!");
				request.getRequestDispatcher("haijiao.jsp").forward(request, response);
			}
		}else{
			request.setAttribute("error","��¼���������");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

}
