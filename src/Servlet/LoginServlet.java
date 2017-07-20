package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bll.UserBll;
import Model.User;

public class LoginServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//��ȡ����
		String name=request.getParameter("uname");
		String pass=request.getParameter("upass");
		//���ݿ⴦���ж�
		UserBll uBll=new UserBll();
		User user=uBll.getUser(name, pass);
		if(user!=null){
			request.removeAttribute("error");
			request.getSession().setAttribute("user",user);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}else{
			request.setAttribute("error","�û��������벻��ȷ��");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

}
