package com.zx.erpsystem.system.dao;

import com.zx.erpsystem.system.model.SupplierManagement;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SupplierManagementMapper {
    int deleteByPrimaryKey(Integer supplierManagementNo);

    int insert(SupplierManagement record);
//
    int insertSelective(SupplierManagement record);
//
   SupplierManagement selectByPrimaryKey(Integer supplierManagementNo);
//
    int updateByPrimaryKeySelective(SupplierManagement record);
//
    int updateByPrimaryKey(SupplierManagement record);
//
    List<SupplierManagement> queryAllSupplier();

}
