package org.zmh.Emtity;

import java.util.List;

public class Page {
//	��������
	private int totalCount;
//	��ҳ��
	private int totalPage;
//	��ǰҳ
	private int currentPage;
//	ÿҳ��ʾ��������
	private int rows;
//	ÿҳ������
	private List<Product> list;
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getRows() {
		return rows;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
	public List<Product> getList() {
		return list;
	}
	public void setList(List<Product> list) {
		this.list = list;
	}
	
}
