package com.yb.ckew.biz;

import com.yb.ckew.entity.User;

public interface UserBiz {
	User selectByUsername(String username);
	
	int deleteByPrimaryKey(String id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}
