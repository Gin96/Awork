package Model;

import java.util.List;

public class Page {

	List list;//数据
	int currentPage;//当前页
	int pageCount;//每页显示多少条
	int pageTotal;//总页数
	int nextPage;//下一页
	int lastPage;//上一页

	/**
	 * 获取下一页方法，与最后一页比较
	 * @return
	 */
	public int getNextPage() {
		return currentPage+1>pageTotal?pageTotal:currentPage+1;
	}
	
	/**
	 * 获取上一页方法，
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
