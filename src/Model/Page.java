package Model;

import java.util.List;

public class Page {

	List list;//����
	int currentPage;//��ǰҳ
	int pageCount;//ÿҳ��ʾ������
	int pageTotal;//��ҳ��
	int nextPage;//��һҳ
	int lastPage;//��һҳ

	/**
	 * ��ȡ��һҳ�����������һҳ�Ƚ�
	 * @return
	 */
	public int getNextPage() {
		return currentPage+1>pageTotal?pageTotal:currentPage+1;
	}
	
	/**
	 * ��ȡ��һҳ������
	 * @return
	 */
	public int getLastPage() {
		return lastPage>1?currentPage-1:1;
	}
	
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getPageTotal() {
		return pageTotal;
	}
	public void setPageTotal(int pageTotal) {
		this.pageTotal = pageTotal;
	}
}
