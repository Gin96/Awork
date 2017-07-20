package Bll;
import java.util.List;

import Dao.UserDao;
import Model.Ping;
import Model.User;
import Model.YiJian;

public class UserBll {
	UserDao uDao=new UserDao();
	
	/**
	 * 根据参数，查询用户
	 * @param name
	 * @param pass
	 * @return
	 */
	public User getUser(String name,String pass){
		return uDao.getUser(name, pass);
	}

	/**
	 * 添加用户到数据库
	 * @param params
	 * @return
	 */
	public int setUser(Object params[]){
		return uDao.setUser(params);
	}
	
	/**
	 * 修改用户资料
	 * @param params
	 * @return
	 */
	public int upUserZi(Object[]params){
		return uDao.upUserZi(params);
	}
	
	/**
	 * 修改用户密码
	 * @param params
	 * @return
	 */
	public int upUserMi(Object[]params){
		return uDao.upUserMi(params);
	}
	
	/**
	 * 返回用户意见箱内容
	 * @param uid	用户真实id，外键
	 * @return
	 */
	public List<YiJian> getYijian(int uid){
		return uDao.getYijian(uid);
	}
	
	/**
	 * 添加评论到ping表
	 * @param content
	 * @param uid
	 * @return
	 */
	public int setPing(String name,String content,int uid,int mid){
		return uDao.setPing(name,content, uid,mid);
	}
	
	/**
	 * 用户删除评论
	 * @param id
	 * @return
	 */
	public int delPing(int id){
		return uDao.delPing(id);
	}
	
	/**
	 * 只显示用户自己的评论
	 * @param uid
	 * @return
	 */
	public List<Ping> getPingx(int uid){
		return uDao.getPingx(uid);
	}
	
	/**
	 * 用户删除自己意见
	 * @param id
	 * @return
	 */
	public int delyi(int id){
		return uDao.delyi(id);
	}
	
	/**
	 * 根据id返回一个用户
	 * @param id
	 * @return
	 */
	public User getU(int id){
		return uDao.getU(id);
	}
}
