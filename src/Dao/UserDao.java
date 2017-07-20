package Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import Model.Page;
import Model.Ping;
import Model.User;
import Model.YiJian;

public class UserDao extends BaseDao{
	
	/**�����û����������ݿ��ѯUser��
	 * �ж��Ƿ�����û��������򷵻��û��������򷵻�null
	 * @return
	 */
	public User getUser(String name,String pass){
		User user=null;
		try {
			String sql="select * from user where name=? and pass=?";
			Object[] params={name,pass};
			ResultSet rs=excuteQuery(sql, params);
			while(rs.next()){
				user=new User();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setPass(rs.getString("pass"));
				user.setSex(rs.getString("sex"));
				user.setEmail(rs.getString("email"));
				user.setPhone(rs.getString("phone"));
				user.setAddress(rs.getNString("address"));
				user.setYan(rs.getString("yan"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}
	
	/**
	 * ����û������ݿ�
	 * @param params
	 * @return
	 */
	public int setUser(Object params[]){
		int i=0;
		String sql="insert into user (name,pass,sex,email,phone,address,yan) values(?,?,?,?,?,?,?)";
		i=excuteUpdate(sql, params);
		return i;
	}
	
	/**
	 * �޸��û���Ϣ
	 * @return
	 */
	public int upUserZi(Object[] params){
		int i=0;
		String sql="update user set sex=?, email=?,phone=?,yan=? where id=?";
		i=excuteUpdate(sql, params);
		return i;
	}
	
	/**
	 * �޸�����
	 * @param params
	 * @return
	 */
	public int upUserMi(Object[]params){
		int i=0;
		String sql="update user set name=?,pass=? where id=?";
		i=excuteUpdate(sql, params);
		return i;
	}
	
	/**
	 * 
	 * @param uid	�û�id
	 * @return		���ظ������������
	 */
	public List<YiJian> getYijian(int uid){
		List<YiJian> list=new ArrayList<YiJian>();
		try {
			String sql="select * from yijian where uid=?";
			Object[]params={uid};
			ResultSet rs=excuteQuery(sql, params);
			while(rs.next()){
				YiJian yi=new YiJian();
				yi.setId(rs.getInt("id"));
				yi.setZhenname(rs.getString("zhenname"));
				yi.setEmail(rs.getString("email"));
				yi.setMessage(rs.getString("message"));
				yi.setUid(rs.getInt("uid"));
				yi.setYidate(rs.getDate("yidate"));
				list.add(yi);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	/**
	 * ����û����۵�ping��
	 * @param content	��������
	 * @param uid		�û����
	 * @return
	 */
	public int setPing(String name,String content,int uid,int mid){
		String sql="insert into ping (name,content,uid,mid,pingdate) values(?,?,?,?,?)";
		Object[]params={name,content,uid,mid,new Date()};
		int i=excuteUpdate(sql, params);
		return i;
	}
	
	/**
	 * �û�ɾ�����۹���
	 * @param id
	 * @return
	 */
	public int delPing(int id){
		String sql="DELETE from ping where id=?";
		Object[]params={id};
		int i=excuteUpdate(sql, params);
		return i;
	}
	
	/**
	 * 
	 * @param uid
	 * @return	ֻ��ʾ�û��Լ�������
	 */
	public List<Ping> getPingx(int uid){
		List<Ping> pList=new ArrayList<Ping>();
		String sql="select * from ping where uid=?";
		Object[]params={uid};
		ResultSet rs=excuteQuery(sql, params);
		try {
			while(rs.next()){
				Ping p=new Ping();
				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setContent(rs.getString("content"));
				p.setPingdate(rs.getDate("pingdate"));
				p.setMid(rs.getInt("mid"));
				p.setUid(rs.getInt("uid"));
				pList.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return pList;
	}
	
	/**
	 * �û�ɾ���Լ������
	 * @param id	idΪ���id
	 * @return
	 */
	public int delyi(int id){
		String sql="delete from yijian where id=?";
		Object[]params={id};
		return excuteUpdate(sql, params);
	}
	
	/**
	 * ����id����һ���û�
	 * @param id
	 * @return
	 */
	public User getU(int id){
		User u=null;
		String sql="select * from user where id=?";
		Object[]params={id};
		ResultSet rs=excuteQuery(sql, params);
		try {
			while(rs.next()){
				u=new User();
				u.setId(rs.getInt("id"));
				u.setName(rs.getString("name"));
				u.setPass(rs.getString("pass"));
				u.setEmail(rs.getString("email"));
				u.setSex(rs.getString("sex"));
				u.setPhone(rs.getString("phone"));
				u.setAddress(rs.getString("address"));
				u.setYan(rs.getString("yan"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return u;
	}
}
