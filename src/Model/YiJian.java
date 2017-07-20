package Model;

import java.util.Date;

public class YiJian {

	private int id;//建议信息id
	private String zhenname;//建议者名称
	private String email;//建议者email
	private String message;//建议内容
	private Date yidate;//建议日期
	private int uid;//外键，用户id
	
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
