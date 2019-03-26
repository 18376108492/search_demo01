package com.itdan.pojo;

/**
 * 查询结果实体类
 */
public class SearchResult {


    private Integer  cust_id;
	private String	cust_name;
    private String	cust_phone;
    private String	cust_source;
    private String	cust_industry;
    private String	cust_level;
    private String	cust_linkman;
    private String	cust_linkman_phone;

    public Integer getCust_id() {
        return cust_id;
    }

    public void setCust_id(Integer cust_id) {
        this.cust_id = cust_id;
    }

    public String getCust_name() {
        return cust_name;
    }

    public void setCust_name(String cust_name) {
        this.cust_name = cust_name;
    }

    public String getCust_phone() {
        return cust_phone;
    }

    public void setCust_phone(String cust_phone) {
        this.cust_phone = cust_phone;
    }

    public String getCust_source() {
        return cust_source;
    }

    public void setCust_source(String cust_source) {
        this.cust_source = cust_source;
    }

    public String getCust_industry() {
        return cust_industry;
    }

    public void setCust_industry(String cust_industry) {
        this.cust_industry = cust_industry;
    }

    public String getCust_level() {
        return cust_level;
    }

    public void setCust_level(String cust_level) {
        this.cust_level = cust_level;
    }

    public String getCust_linkman() {
        return cust_linkman;
    }

    public void setCust_linkman(String cust_linkman) {
        this.cust_linkman = cust_linkman;
    }

    public String getCust_linkman_phone() {
        return cust_linkman_phone;
    }

    public void setCust_linkman_phone(String cust_linkman_phone) {
        this.cust_linkman_phone = cust_linkman_phone;
    }
}
