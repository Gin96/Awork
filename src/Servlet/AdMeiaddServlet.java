package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bll.AdminBll;

public class AdMeiaddServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String ming=request.getParameter("ming");
		String diyi=request.getParameter("diyi");
		String dier=request.getParameter("dier");
		String disan=request.getParameter("disan");
		String disi=request.getParameter("disi");
		String diwu=request.getParameter("diwu");
		String diliu=request.getParameter("diliu");
		String diqi=request.getParameter("diqi");
		String diba=request.getParameter("diba");
		String dijiu=request.getParameter("dijiu");
		String dishi=request.getParameter("dishi");
		Object[]params={ming,diyi,dier,disan,disi,diwu,diliu,diqi,diba,dijiu,dishi};
		int i=new AdminBll().setMei(params);
		if(i>0){
			request.setAttribute("addmei", "添加成功，已默认选中新添加的美文！");
			request.getRequestDispatcher("AdMeiServlet").forward(request, response);
		}else{
			request.setAttribute("addmei", "网络开小差了，请稍后添加！");
			request.getRequestDispatcher("AdMeiServlet").forward(request, response);
		}
		
	}

}
