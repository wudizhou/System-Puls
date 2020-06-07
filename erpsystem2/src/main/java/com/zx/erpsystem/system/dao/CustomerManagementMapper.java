package com.zx.erpsystem.system.dao;

import com.zx.erpsystem.system.model.CustomerManagement;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CustomerManagementMapper {
    int deleteByPrimaryKey(Integer customerManagementNo);

    int insert(CustomerManagement record);

    int insertSelective(CustomerManagement record);

    CustomerManagement selectByPrimaryKey(Integer customerManagementNo);

    int updateByPrimaryKeySelective(CustomerManagement record);

    int updateByPrimaryKey(CustomerManagement record);

    List<CustomerManagement> queryAllCustomer();
}