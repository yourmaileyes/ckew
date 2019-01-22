package com.yb.ckew.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yb.ckew.biz.AnswerBiz;
import com.yb.ckew.entity.Answer;
import com.yb.ckew.mapper.AnswerMapper;
import com.yb.ckew.mapper.UserMapper;
@Service(value="AnswerBiz")
public class AnswerBizImpl implements AnswerBiz{
	@Autowired
	AnswerMapper answerMapper;
	@Autowired
	UserMapper userMapper;

	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return answerMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Answer record) {
		// TODO Auto-generated method stub
		return answerMapper.insert(record);
	}

	@Override
	public int insertSelective(Answer record) {
		// TODO Auto-generated method stub
		return answerMapper.insertSelective(record);
	}

	@Override
	public Answer selectByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return answerMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Answer record) {
		// TODO Auto-generated method stub
		return answerMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Answer record) {
		// TODO Auto-generated method stub
		return answerMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Answer> selectbyuserid(String userid) {
		// TODO Auto-generated method stub
		return answerMapper.selectbyuserid(userid);
	}

	@Override
	public List<Answer> showanswer() {
		// TODO Auto-generated method stub
		List<Answer> anl = answerMapper.showanswer();
		for(int i=0;i<anl.size();i++) {
			anl.get(i).setExamid(userMapper.selectByPrimaryKey(anl.get(i).getUserid()).getUsername());
		}
		return anl;
	}

}
