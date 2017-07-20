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
	 * ����Ա��¼����ѯ��admin���½�ɹ�
	 * @return
	 */
	public Admin getAdmin(String aname,String apass){
		return aDao.getAdmin(aname, apass);
	}
	
	/**
	 * �����Ϣ�������
	 * @return
	 */
	public int yijian(String zhenname,String email,String message,int uid){
		return aDao.yijian(zhenname, email, message, uid);
	}
	
	/**
	 * ����Page��������,����
	 * @param currentPage	��ǰҳ
	 * @param pageCount		ÿҳ��ʾ������
	 * @return
	 */
	public Page getPages(int currentPage,int pageCount){
		Page pages=new Page();
		pages.setList(aDao.getyijians(currentPage, pageCount));//ҳ������
		pages.setCurrentPage(currentPage);//��ǰ��Nҳ
		pages.setPageCount(pageCount);//ÿҳ��ʾ������
		pages.setPageTotal(aDao.getPageTotal(pageCount));//��ҳ��
		return pages;
	}
	
	/**
	 * ����Page��������,����
	 * @param currentPage	��ǰҳ
	 * @param pageCount		ÿҳ��ʾ������
	 * @return
	 */
	public Page getPagej(int currentPage,int pageCount){
		Page pagej=new Page();
		pagej.setList(aDao.getyijianj(currentPage, pageCount));//ҳ������
		pagej.setCurrentPage(currentPage);//��ǰ��Nҳ
		pagej.setPageCount(pageCount);//ÿҳ��ʾ������
		pagej.setPageTotal(aDao.getPageTotal(pageCount));//��ҳ��
		return pagej;
	}
	
	/**
	 * @param currentPage	��ǰҳ
	 * @param pageCount		ÿҳ��ʾ������
	 * @return				���������û���Ϣ
	 */
	public Page getPageUser(int currentPage,int pageCount){
		Page upage=new Page();
		upage.setList(aDao.getUserList(currentPage, pageCount));
		upage.setCurrentPage(currentPage);
		upage.setPageCount(pageCount);
		upage.setPageTotal(aDao.getUserCount(pageCount));
		return upage;
	}
	
	/**id ���ĵ�id
	 * ����ʯ����ʾ����
	 * @return
	 */
	public MeiWen getMei(int id){
		return aDao.getMei(id);
	}
	
	/**
	 * @param currentPage	��ǰҳ
	 * @param pageCount		ÿҳ��ʾ������
	 * @param mid	����id
	 * @return ����ʯ��������ʾ��
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
	 * ��ȡ����������Ϣ
	 * @return
	 */
	public List<MeiWen> getMei(){
		return aDao.getMei();
	}
	
	/**
	 * �������
	 * @param params
	 * @return
	 */
	public int setMei(Object[]params){
		return aDao.setMei(params);
	}
	
	/**
	 * ɾ������
	 * @param id
	 * @return
	 */
	public int delMei(int id){
		return aDao.delMei(id);	
	}
	
	/**
	 * ɾ�����ĵ�����
	 * @param id
	 * @return
	 */
	public int delMeip(int id){
		return aDao.delMeip(id);
	}
}
