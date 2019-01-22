package com.yb.ckew.biz;

import java.util.List;

import com.yb.ckew.entity.Answer;

public interface AnswerBiz {
	List<Answer> showanswer();
	
	List<Answer> selectbyuserid(String userid);
	
	int deleteByPrimaryKey(String id);

    int insert(Answer record);

    int insertSelective(Answer record);

    Answer selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Answer record);

    int updateByPrimaryKey(Answer record);

}
