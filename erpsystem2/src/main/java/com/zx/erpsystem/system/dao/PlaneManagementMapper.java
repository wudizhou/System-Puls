package com.zx.erpsystem.system.dao;

import com.zx.erpsystem.system.model.PlaneManagement;

public interface PlaneManagementMapper {
    int deleteByPrimaryKey(Integer projectNo);

    int insert(PlaneManagement record);

    int insertSelective(PlaneManagement record);

    PlaneManagement selectByPrimaryKey(Integer projectNo);

    int updateByPrimaryKeySelective(PlaneManagement record);

    int updateByPrimaryKey(PlaneManagement record);
}