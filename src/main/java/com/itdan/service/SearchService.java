package com.itdan.service;

import com.itdan.pojo.SearchResult;

import java.util.List;

/**
 * 查询业务层
 */
public interface SearchService {

    /**
     * 查询方法
     * @param keyword 关键词
     * @return
     */
    List<SearchResult> search( String keyword);

}
