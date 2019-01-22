package com.yb.ckew.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yb.ckew.biz.ExamBiz;
import com.yb.ckew.entity.Exam;
import com.yb.ckew.mapper.ExamMapper;
@Service(value="ExamBiz")
public class ExamBizImpl implements ExamBiz {
	@Autowired
	ExamMapper examMapper;

	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return examMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Exam record) {
		// TODO Auto-generated method stub
		return examMapper.insert(record);
	}

	@Override
	public int insertSelective(Exam record) {
		// TODO Auto-generated method stub
		return examMapper.insertSelective(record);
	}

	@Override
	public Exam selectByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return examMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Exam record) {
		// TODO Auto-generated method stub
		return examMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Exam record) {
		// TODO Auto-generated method stub
		return examMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Exam> selectall() {
		// TODO Auto-generated method stub
		return examMapper.selectall();
	}

	@Override
	public List<Exam> showexam() {
		// TODO Auto-generated method stub
		return examMapper.showexam();
	}

}
