package com.yb.ckew.mapper;

import java.util.List;

import com.yb.ckew.entity.Exam;

public interface ExamMapper {
	List<Exam> showexam();
	
	List<Exam> selectall();
	
    int deleteByPrimaryKey(String id);

    int insert(Exam record);

    int insertSelective(Exam record);

    Exam selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Exam record);

    int updateByPrimaryKey(Exam record);
}