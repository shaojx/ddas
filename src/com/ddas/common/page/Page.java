package com.ddas.common.page;

import java.util.List;

/**
 * ClassName:	Page
 * Function: 	数据分页封装
*
 * @author shaojunxiang
 * @date 12:26
 * @since JDK 1.6
 */
public class Page {
    /**分页的记录数*/
    private  int pageSize;
    /**当前分页(index)*/
    private int currentPage;
    /**总共的记录数*/
    private  int totalPage;
    /**当前分页的数据*/
    private List<?> dataList;

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public List<?> getDataList() {
        return dataList;
    }

    public void setDataList(List<?> dataList) {
        this.dataList = dataList;
    }
}
