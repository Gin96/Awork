package Model;

import java.util.Date;

public class YiJian {

	private int id;//������Ϣid
	private String zhenname;//����������
	private String email;//������email
	private String message;//��������
	private Date yidate;//��������
	private int uid;//������û�id
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getZhenname() {
		return zhenname;
	}
	public void setZhenname(String zhenname) {
		this.zhenname = zhenname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Date getYidate() {
		return yidate;
	}
	public void setYidate(Date yidate) {
		this.yidate = yidate;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	
	
}
