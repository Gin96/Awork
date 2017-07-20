package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class BaseDao {

	private static final String URL="jdbc:mysql://127.0.0.1:3306/awork";
	private static final String UNAME="root";
	private static final String UPASS="root";
	Connection conn=null;
	PreparedStatement pstmt=null;
	
	static{		
		try {
			Class.forName("com.mysql.jdbc.Driver");			
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
	
	public Connection getConn(){
		try {			
			conn= DriverManager.getConnection(URL, UNAME, UPASS);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	/**
	 * ≤È—Ø
	 * @param sql
	 * @param params
	 * @return
	 */
	public ResultSet excuteQuery(String sql,Object[] params){
		ResultSet rs =null;
		try {			
			if(conn==null){
				getConn();
			}
			pstmt =conn.prepareStatement(sql);
			if(params!=null){
				for (int i = 0; i < params.length; i++) {
					pstmt.setObject(i+1, params[i]);					
				}
			}
			rs =pstmt.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	/**
	 * ‘ˆ…æ∏ƒ
	 * @param sql
	 * @param params
	 * @return
	 */
	public int excuteUpdate(String sql,Object[] params){
		int result=0;
		try {
			if(conn==null){
				getConn();
			}
			pstmt =conn.prepareStatement(sql);
			if(params!=null){
				for (int i = 0; i < params.length; i++) {
					pstmt.setObject(i+1, params[i]);					
				}
			}
			result=pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public void closeAll(){
		try {
			if(pstmt!=null)
				pstmt.close();
			if(conn!=null)
				conn.close();			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
