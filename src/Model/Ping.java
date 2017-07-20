package Model;

import java.util.Date;

public class Ping {

	private int id;//评论id
	private String name;//用户名字
	private String content;//评论内容
	private Date pingdate;//评论时间
	private int uid;//用户id
	private int mid;//美文id
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getPingdate() {
		return pingdate;
	}
	public void setPingdate(Date pingdate) {
		this.pingdate = pingdate;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	
}
