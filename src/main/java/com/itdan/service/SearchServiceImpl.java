package com.itdan.service;

import com.itdan.dao.SearchResultMapper;
import com.itdan.pojo.SearchResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SearchServiceImpl implements  SearchService {

    @Autowired
    private SearchResultMapper searchResultMapper;

    @Override
    public List<SearchResult> search(String keyword) {
        return searchResultMapper.search(keyword);
    }
}
