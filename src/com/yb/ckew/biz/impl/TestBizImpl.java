package com.yb.ckew.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yb.ckew.biz.TestBiz;
import com.yb.ckew.entity.Test;
import com.yb.ckew.mapper.TestMapper;
@Service(value="TestBiz")
public class TestBizImpl implements TestBiz {
	@Autowired
	TestMapper testMapper;

	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return testMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Test record) {
		// TODO Auto-generated method stub
		return testMapper.insert(record);
	}

	@Override
	public int insertSelective(Test record) {
		// TODO Auto-generated method stub
		return testMapper.insertSelective(record);
	}

	@Override
	public Test selectByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return testMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Test record) {
		// TODO Auto-generated method stub
		return testMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Test record) {
		// TODO Auto-generated method stub
		return testMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Test> selectByUserid(String userid) {
		// TODO Auto-generated method stub
		return testMapper.selectByUserid(userid);
	}

	@Override
	public List<Test> selectall() {
		// TODO Auto-generated method stub
		return testMapper.selectall();
	}

}
