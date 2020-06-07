package com.zx.erpsystem.system.serviceimpl;

import com.zx.erpsystem.system.dao.SupplierManagementMapper;
import com.zx.erpsystem.system.model.SupplierManagement;
import com.zx.erpsystem.system.service.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SupplierServiceImpl implements SupplierService {
    @Autowired
    private SupplierManagementMapper supplierManagementMapper;
    @Override
    public List<SupplierManagement> queryAllSupplier() {
        return supplierManagementMapper.queryAllSupplier();
    }

    @Override
    public int addSupplier(SupplierManagement sm) {
        return supplierManagementMapper.insertSelective(sm);
    }

    @Override
    public SupplierManagement querySupplierById(int supplierlId) {
        return supplierManagementMapper.selectByPrimaryKey(supplierlId);
    }

    @Override
    public int updateSupplier(SupplierManagement sm) {
        return supplierManagementMapper.updateByPrimaryKeySelective(sm);
    }

    @Override
    public int deleteSupplierByNo(Integer supplierManagementNo) {
        return supplierManagementMapper.deleteByPrimaryKey(supplierManagementNo);
    }
}
