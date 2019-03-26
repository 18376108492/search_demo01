package com.itdan.controller;

import com.itdan.pojo.SearchResult;
import com.itdan.service.SearchService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 查询控制层
 */
@Controller
public class SearchController {

    @Autowired
    private SearchService searchService;


    /*
SELECT
	c.cust_id,
	c.cust_name,
	c.cust_phone,
	s.dict_item_name AS cust_source,
	i.dict_item_name AS cust_industry,
	a.dict_item_name AS cust_level,
	l.lkm_name AS cust_linkman,
	l.lkm_phone AS cust_linkman_phone
FROM
	cst_customer c
LEFT JOIN cst_basedict s ON c.cust_source = s.dict_id
LEFT JOIN cst_basedict i ON c.cust_industry = i.dict_id
LEFT JOIN cst_basedict a ON c.cust_level = a.dict_id
LEFT JOIN cst_linkman l ON c.cust_id = l.lkm_cust_id
WHERE
c.cust_name LIKE '%阿里%' OR cust_source LIKE '%%' OR cust_industry LIKE '%事业%' OR cust_linkman LIKE '%%'

   1.本查询三表联查，先通过客户表和字典表查出客户的相应信息（包括客户的行业，客户的级别，客户的来源）
   2.在关联联系人表查询出客户联系人的姓名和电话，最后得出查询结果集
   3.在通过模糊查询得出我们想要的信息，（模糊查询只查询：客户的名字，客户的行业，客户来源，联系人姓名）
    * */

    /**
     * 查询操作
     * @param request
     * @return
     */
    @RequestMapping(value = "/search",method = RequestMethod.POST)
    public ModelAndView search(HttpServletRequest request){
       String keyword=request.getParameter("keyword");
        ModelAndView view= new ModelAndView();
       if(keyword!=null||!"".equals(keyword)){
           List<SearchResult> list = searchService.search(keyword);
           view.addObject("customer",list);
           view.setViewName("result");
       }else {
           view.setViewName("index");
       }
       return view;
    }


    @RequestMapping("/")
    public String index(){
        return "index";
    }
}
