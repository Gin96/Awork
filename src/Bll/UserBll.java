package Bll;
import java.util.List;

import Dao.UserDao;
import Model.Ping;
import Model.User;
import Model.YiJian;

public class UserBll {
	UserDao uDao=new UserDao();
	
	/**
	 * ���ݲ�������ѯ�û�
	 * @param name
	 * @param pass
	 * @return
	 */
	public User getUser(String name,String pass){
		return uDao.getUser(name, pass);
	}

	/**
	 * ����û������ݿ�
	 * @param params
	 * @return
	 */
	public int setUser(Object params[]){
		return uDao.setUser(params);
	}
	
	/**
	 * �޸��û�����
	 * @param params
	 * @return
	 */
	public int upUserZi(Object[]params){
		return uDao.upUserZi(params);
	}
	
	/**
	 * �޸��û�����
	 * @param params
	 * @return
	 */
	public int upUserMi(Object[]params){
		return uDao.upUserMi(params);
	}
	
	/**
	 * �����û����������
	 * @param uid	�û���ʵid�����
	 * @return
	 */
	public List<YiJian> getYijian(int uid){
		return uDao.getYijian(uid);
	}
	
	/**
	 * ������۵�ping��
	 * @param content
	 * @param uid
	 * @return
	 */
	public int setPing(String name,String content,int uid,int mid){
		return uDao.setPing(name,content, uid,mid);
	}
	
	/**
	 * �û�ɾ������
	 * @param id
	 * @return
	 */
	public int delPing(int id){
		return uDao.delPing(id);
	}
	
	/**
	 * ֻ��ʾ�û��Լ�������
	 * @param uid
	 * @return
	 */
	public List<Ping> getPingx(int uid){
		return uDao.getPingx(uid);
	}
	
	/**
	 * �û�ɾ���Լ����
	 * @param id
	 * @return
	 */
	public int delyi(int id){
		return uDao.delyi(id);
	}
	
	/**
	 * ����id����һ���û�
	 * @param id
	 * @return
	 */
	public User getU(int id){
		return uDao.getU(id);
	}
}
