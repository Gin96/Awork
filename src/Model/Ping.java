package Model;

import java.util.Date;

public class Ping {

	private int id;//����id
	private String name;//�û�����
	private String content;//��������
	private Date pingdate;//����ʱ��
	private int uid;//�û�id
	private int mid;//����id
	
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
