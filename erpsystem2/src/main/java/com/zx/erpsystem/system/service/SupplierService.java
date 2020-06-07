package com.zx.erpsystem.system.service;

import com.zx.erpsystem.system.model.SupplierManagement;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SupplierService {
    List<SupplierManagement> queryAllSupplier();

    int addSupplier(SupplierManagement sm);

    SupplierManagement querySupplierById(int supplierlId);

    int updateSupplier(SupplierManagement sm);

    int deleteSupplierByNo(Integer supplierManagementNo);
}
