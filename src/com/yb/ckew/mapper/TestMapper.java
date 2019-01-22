package com.yb.ckew.mapper;

import java.util.List;

import com.yb.ckew.entity.Test;

public interface TestMapper {
	List<Test> selectall();
	
	List<Test> selectByUserid(String userid);
	
    int deleteByPrimaryKey(String id);

    int insert(Test record);

    int insertSelective(Test record);

    Test selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Test record);

    int updateByPrimaryKey(Test record);
}