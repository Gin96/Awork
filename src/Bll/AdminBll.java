package Bll;

import java.sql.ResultSet;
import java.util.List;

import Dao.AdminDao;
import Model.Admin;
import Model.MeiWen;
import Model.Page;
import Model.YiJian;

public class AdminBll {

	AdminDao aDao=new AdminDao();
	/**
	 * 管理员登录，查询出admin则登陆成功
	 * @return
	 */
	public Admin getAdmin(String aname,String apass){
		return aDao.getAdmin(aname, apass);
	}
	
	/**
	 * 添加信息到意见箱
	 * @return
	 */
	public int yijian(String zhenname,String email,String message,int uid){
		return aDao.yijian(zhenname, email, message, uid);
	}
	
	/**
	 * 返回Page所有内容,升序
	 * @param currentPage	当前页
	 * @param pageCount		每页显示多少条
	 * @return
	 */
	public Page getPages(int currentPage,int pageCount){
		Page pages=new Page();
		pages.setList(aDao.getyijians(currentPage, pageCount));//页面数据
		pages.setCurrentPage(currentPage);//当前第N页
		pages.setPageCount(pageCount);//每页显示多少条
		pages.setPageTotal(aDao.getPageTotal(pageCount));//总页数
		return pages;
	}
	
	/**
	 * 返回Page所有内容,降序
	 * @param currentPage	当前页
	 * @param pageCount		每页显示多少条
	 * @return
	 */
	public Page getPagej(int currentPage,int pageCount){
		Page pagej=new Page();
		pagej.setList(aDao.getyijianj(currentPage, pageCount));//页面数据
		pagej.setCurrentPage(currentPage);//当前第N页
		pagej.setPageCount(pageCount);//每页显示多少条
		pagej.setPageTotal(aDao.getPageTotal(pageCount));//总页数
		return pagej;
	}
	
	/**
	 * @param currentPage	当前页
	 * @param pageCount		每页显示多少条
	 * @return				返回所有用户信息
	 */
	public Page getPageUser(int currentPage,int pageCount){
		Page upage=new Page();
		upage.setList(aDao.getUserList(currentPage, pageCount));
		upage.setCurrentPage(currentPage);
		upage.setPageCount(pageCount);
		upage.setPageTotal(aDao.getUserCount(pageCount));
		return upage;
	}
	
	/**id 美文的id
	 * 海枯石烂显示内容
	 * @return
	 */
	public MeiWen getMei(int id){
		return aDao.getMei(id);
	}
	
	/**
	 * @param currentPage	当前页
	 * @param pageCount		每页显示多少条
	 * @param mid	美文id
	 * @return 海枯石烂评论显示区
	 */
	public Page getPingPage(int currentPage,int pageCount,int mid){
		Page page=new Page();
		page.setList(aDao.getPing(currentPage, pageCount, mid));
		page.setCurrentPage(currentPage);
		page.setPageCount(pageCount);
		page.setPageTotal(aDao.getPingCount(pageCount, mid));
		return page;
	}
	
	/**
	 * 获取所有美文信息
	 * @return
	 */
	public List<MeiWen> getMei(){
		return aDao.getMei();
	}
	
	/**
	 * 添加美文
	 * @param params
	 * @return
	 */
	public int setMei(Object[]params){
		return aDao.setMei(params);
	}
	
	/**
	 * 删除美文
	 * @param id
	 * @return
	 */
	public int delMei(int id){
		return aDao.delMei(id);	
	}
	
	/**
	 * 删除美文的评论
	 * @param id
	 * @return
	 */
	public int delMeip(int id){
		return aDao.delMeip(id);
	}
}
