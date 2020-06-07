package com.zx.erpsystem.system.serviceimpl;

import com.zx.erpsystem.system.dao.CustomerManagementMapper;
import com.zx.erpsystem.system.model.CustomerManagement;
import com.zx.erpsystem.system.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    CustomerManagementMapper customerManagementMapper;

    @Override
    public List<CustomerManagement> queryAllCustomer() {
        return customerManagementMapper.queryAllCustomer();
    }

    @Override
    public CustomerManagement queryCustomerByCustomerId(int customerlId) {
        return customerManagementMapper.selectByPrimaryKey(customerlId);
    }

    @Override
    public int updateCustomerByNo(CustomerManagement ct) {
        return customerManagementMapper.updateByPrimaryKeySelective(ct);
    }

    @Override
    public int deleteCustomerByNo(Integer customerManagementNo) {
        return customerManagementMapper.deleteByPrimaryKey(customerManagementNo);
    }

    @Override
    public int addCustomerByNo(CustomerManagement ct) {
        return customerManagementMapper.insertSelective(ct);
    }
}
