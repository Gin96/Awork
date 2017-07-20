package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bll.UserBll;

public class GeYiJiandelServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		if(request.getParameter("id")!=null){
			int id=Integer.valueOf(request.getParameter("id").toString());
			int i=new UserBll().delyi(id);
			if(i>0){
				request.setAttribute("delyi", "ɾ���ɹ���");
				request.getRequestDispatcher("GeYijianServlet").forward(request, response);
			}else{
				request.setAttribute("delyi", "���翪С���ˣ����Ժ�ɾ����");
				request.getRequestDispatcher("GeYijianServlet").forward(request, response);
			}
		}else{
			request.setAttribute("delyi", "���翪С���ˣ����Ժ�ɾ����");
			request.getRequestDispatcher("GeYijianServlet").forward(request, response);
		}
	}

}
