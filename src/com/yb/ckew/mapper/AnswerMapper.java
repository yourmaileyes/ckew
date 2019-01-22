package com.yb.ckew.mapper;

import java.util.List;

import com.yb.ckew.entity.Answer;

public interface AnswerMapper {
	List<Answer> showanswer();
	
	List<Answer> selectbyuserid(String userid);
	
    int deleteByPrimaryKey(String id);

    int insert(Answer record);

    int insertSelective(Answer record);

    Answer selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Answer record);

    int updateByPrimaryKey(Answer record);
}