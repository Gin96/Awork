package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bll.AdminBll;
import Model.User;

public class JianYiServlet extends HttpServlet {


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		request.removeAttribute("success");
		User user=(User)request.getSession().getAttribute("user");
		if(user!=null){
			request.removeAttribute("miss");
			int uid=user.getId();
			String zhenname=request.getParameter("name");
			String email=request.getParameter("email");
			String message=request.getParameter("message");
			AdminBll aBll=new AdminBll();
			int i=aBll.yijian(zhenname, email, message, uid);
			if(i>0){
				request.setAttribute("success","���������ѳɹ���¼��");
				request.getRequestDispatcher("contact.jsp").forward(request, response);
			}else{
				request.setAttribute("miss","�����ƺ���С���ˣ���������ʧ���ˣ�");
				request.getRequestDispatcher("contact.jsp").forward(request, response);
			}
		}else{
			request.setAttribute("miss","���ڵ�½�����ԣ��Ա�����������ϵ��");
			request.getRequestDispatcher("contact.jsp").forward(request, response);
		}
	}

}
