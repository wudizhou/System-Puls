package com.zx.erpsystem.system.service;

import com.zx.erpsystem.system.model.CustomerManagement;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CustomerService {
    List<CustomerManagement> queryAllCustomer();

    CustomerManagement queryCustomerByCustomerId(int customerlId);

    int updateCustomerByNo(CustomerManagement ct);

    int deleteCustomerByNo(Integer customerManagementNo);

    int addCustomerByNo(CustomerManagement ct);
}
