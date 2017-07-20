package Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import Model.Admin;
import Model.MeiWen;
import Model.Ping;
import Model.User;
import Model.YiJian;

public class AdminDao extends BaseDao{

	/**
	 * ����Ա��¼�������û�������������ݿ����ѯ���û�
	 * @return
	 */
	public Admin getAdmin(String aname ,String apass){
		Admin admin=null;
		try {
			String sql="select * from admin where aname =? and apass=?";
			Object[]params={aname,apass};
			ResultSet rs=excuteQuery(sql, params);
			while(rs.next()){
				admin=new Admin();
				admin.setId(rs.getInt("id"));
				admin.setAname(rs.getString("aname"));
				admin.setApass(rs.getString("apass"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return admin;
	}
	
	/**
	 * �����Ϣ�������
	 * @param zhenname
	 * @param email
	 * @param message
	 * @param uid
	 * @return
	 */
	public int yijian(String zhenname,String email,String message,int uid){
		int i=0;
		String sql="insert into yijian (zhenname,email,message,uid,yidate)values(?,?,?,?,?)";
		Object[]params={zhenname,email,message,uid,new Date()};
		i=excuteUpdate(sql, params);
		return i;
	}
	
	/**
	 * ���
	 * @param currentPage	��ǰҳ
	 * @param pageCount		ÿҳ��ʾ������
	 * @return	������ʾ�����ݣ�����
	 */
	public List<YiJian> getyijians(int currentPage,int pageCount){
		List<YiJian> list=new ArrayList<YiJian>();
		try {
			int startPage=(currentPage-1)*pageCount;//ÿҳ�ӵڼ�����ʼ
			String sql="select * from yijian limit ?,?";
			Object[] params={startPage,pageCount};//���Ʋ�ѯ����Ҫ�����������ӵڼ�����ʼ���Լ���ʾ������
			ResultSet rsy=	excuteQuery(sql, params);
			while(rsy.next()){
				YiJian yi=new YiJian();
				yi.setId(rsy.getInt("id"));
				yi.setZhenname(rsy.getString("zhenname"));
				yi.setEmail(rsy.getString("email"));
				yi.setMessage(rsy.getString("message"));
				yi.setYidate(rsy.getDate("yidate"));
				yi.setUid(rsy.getInt("uid"));
				list.add(yi);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	/**
	 * ���
	 * @param currentPage	��ǰҳ
	 * @param pageCount		ÿҳ��ʾ������
	 * @return	������ʾ�����ݣ�����
	 */
	public List<YiJian> getyijianj(int currentPage,int pageCount){
		List<YiJian> list=new ArrayList<YiJian>();
		try {
			int startPage=(currentPage-1)*pageCount;//ÿҳ�ӵڼ�����ʼ
			String sql="select * from yijian order by id desc limit ?,?";
			Object[] params={startPage,pageCount};//���Ʋ�ѯ����Ҫ�����������ӵڼ�����ʼ���Լ���ʾ������
			ResultSet rsy=	excuteQuery(sql, params);
			while(rsy.next()){
				YiJian yi=new YiJian();
				yi.setId(rsy.getInt("id"));
				yi.setZhenname(rsy.getString("zhenname"));
				yi.setEmail(rsy.getString("email"));
				yi.setMessage(rsy.getString("message"));
				yi.setYidate(rsy.getDate("yidate"));
				yi.setUid(rsy.getInt("uid"));
				list.add(yi);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	/**
	 * ��ȡ������ҳ��
	 * @param pageCount ÿҳ��ʾ������
	 * @return
	 */
	public int getPageTotal(int pageCount){
		int PageTotal=0;//����һ����ҳ���ı���
		try {
			int tableCount=0;//�������ݵ�������
			String sql="select count(id) as c from yijian";
			ResultSet rs=excuteQuery(sql, null);
			while(rs.next()){
				tableCount=rs.getInt("c");
			}
			if(tableCount%pageCount==0){
				PageTotal=tableCount/pageCount;
			}else{
				PageTotal=tableCount/pageCount+1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return PageTotal;
	}
	
	/**
	 * 
	 * @param currentPage	��ǰҳ
	 * @param pageCount		ÿҳ��ʾ������
	 * @return		����ҳ����ʾ����Ҫ������
	 */
	public List<User> getUserList(int currentPage,int pageCount){
		List<User> uList=new ArrayList<User>();
		try {
			int startPage=(currentPage-1)*pageCount;//ÿҳ�ӵڼ�����ʼ
			String sql="select * from user limit ?,?";
			Object[] params={startPage,pageCount};//���Ʋ�ѯ����Ҫ�����������ӵڼ�����ʼ���Լ���ʾ������
			ResultSet rs=	excuteQuery(sql,params);
			while(rs.next()){
				User user=new User();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setPass(rs.getString("pass"));
				user.setSex(rs.getString("sex"));
				user.setEmail(rs.getString("email"));
				user.setPhone(rs.getString("phone"));
				user.setAddress(rs.getString("address"));
				user.setYan(rs.getString("yan"));
				uList.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return uList;
	}
	
	/**
	 * ��ȡ�û����ܼƶ���ҳ
	 * @param pageCount
	 * @return
	 */
	public int getUserCount(int pageCount){
		int i=0;//������ҳ��
		int zong=0;//������
		String sql="select count(*) as c from user";
		ResultSet rs=excuteQuery(sql, null);
		try {
			while(rs.next()){
				zong=rs.getInt("c");
				if(zong%pageCount==0){
					i=zong/pageCount;
				}else{
					i=zong/pageCount+1;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}
	
	/**
	 * ����ʯ��������ʾ����
	 * @return
	 */
	public MeiWen getMei(int id){
		MeiWen mei=null;
		try {
			String sql="select * from meiwen where id=?";
			Object[]params={id};
			ResultSet rs=excuteQuery(sql, params);
			while(rs.next()){
				mei=new MeiWen();
				mei.setId(rs.getInt("id"));
				mei.setMing(rs.getString("ming"));
				mei.setDiyi(rs.getString("diyi"));
				mei.setDier(rs.getString("dier"));
				mei.setDisan(rs.getString("disan"));
				mei.setDisi(rs.getString("disi"));
				mei.setDiwu(rs.getString("diwu"));
				mei.setDiliu(rs.getString("diliu"));
				mei.setDiqi(rs.getString("diqi"));
				mei.setDiba(rs.getString("diba"));
				mei.setDijiu(rs.getString("dijiu"));
				mei.setDishi(rs.getString("dishi"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return mei;
	}
	
	/**
	 * ����mid������������ʾ������
	 * @param currentPage
	 * @param pageCount
	 * @return
	 */
	public List<Ping> getPing(int currentPage,int pageCount,int mid ){
		List<Ping> pList=new ArrayList<Ping>();
		int pingbeign=(currentPage-1)*pageCount;
		try {
			String sql="select * from ping where mid=? order by id desc limit ?,?";
			Object[]params={mid,pingbeign,pageCount};
			ResultSet rs=excuteQuery(sql, params);
			while(rs.next()){
				Ping ping=new Ping();
				ping.setId(rs.getInt("id"));
				ping.setName(rs.getString("name"));
				ping.setContent(rs.getString("content"));
				ping.setPingdate(rs.getDate("pingdate"));
				ping.setUid(rs.getInt("uid"));
				ping.setMid(rs.getInt("mid"));
				pList.add(ping);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return pList;
	}
	
	/**����mid ����������ҳ��
	 * @param pageCount	ÿҳ��ʾ������
	 * @return	����������ҳ��
	 */
	public int getPingCount(int pageCount,int mid){
		int i=0;//����������ҳ��
		int tiao=0;//��������������
		String sql="select count(*) as c from ping where mid=?";
		Object[]params={mid};
		ResultSet rs=excuteQuery(sql, params);
		try {
			while(rs.next()){
				tiao=rs.getInt("c");
			}
			if(tiao%pageCount==0){
				i=tiao/pageCount;
			}else{
				i=tiao/pageCount+1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}
	
	
	/**
	 * ��ȡ��������
	 * @return
	 */
	public List<MeiWen> getMei(){
		List<MeiWen> mList=new ArrayList<MeiWen>();
		String sql="select * from meiwen";
		ResultSet rs=excuteQuery(sql, null);
		try {
			while(rs.next()){
				MeiWen mei=new MeiWen();
				mei.setId(rs.getInt("id"));
				mei.setMing(rs.getString("ming"));
				mei.setDiyi(rs.getString("diyi"));
				mei.setDier(rs.getString("dier"));
				mei.setDisan(rs.getString("disan"));
				mei.setDisi(rs.getString("disi"));
				mei.setDiwu(rs.getString("diwu"));
				mei.setDiliu(rs.getString("diliu"));
				mei.setDiqi(rs.getString("diqi"));
				mei.setDiba(rs.getString("diba"));
				mei.setDijiu(rs.getString("dijiu"));
				mei.setDishi(rs.getString("dishi"));
				mList.add(mei);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return mList;
	}
	
	/**
	 * �������
	 * @param params	�����ֵ��AdMeiaddServlet���ȡ����������
	 * @return
	 */
	public int setMei(Object[]params){
		int i=0;//����һ��i
		String sql="insert into meiwen (ming,diyi,dier,disan,disi,diwu,diliu,diqi,diba,dijiu,dishi) values(?,?,?,?,?,?,?,?,?,?,?)";
		i=excuteUpdate(sql, params);
		return i;
	}
	/**
	 * ɾ��һ������
	 * @param id   ����idɾ��
	 * @return
	 */
	public int delMei(int id){
		int i=0;
		String sql="delete from meiwen where id=?";
		Object[]params={id};
		i=excuteUpdate(sql, params);
		return i;
	}
	
	/**
	 * ɾ����������
	 * @param id
	 * @return
	 */
	public int delMeip(int id){
		String sql="delete from ping where id=?";
		Object[]params={id};
		return excuteUpdate(sql, params);
	}
}
