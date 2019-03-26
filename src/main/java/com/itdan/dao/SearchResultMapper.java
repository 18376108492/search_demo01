package com.itdan.dao;

import com.itdan.pojo.SearchResult;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface SearchResultMapper {

    /**
     * 查询方法
     * @param keyword 关键词
     * @return
     */
    List<SearchResult> search(@Param(value="keyword") String keyword);

}
