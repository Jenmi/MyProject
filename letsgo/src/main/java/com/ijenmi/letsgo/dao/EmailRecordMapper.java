package com.ijenmi.letsgo.dao;

import com.ijenmi.letsgo.model.EmailRecord;

public interface EmailRecordMapper {
    int deleteByPrimaryKey(Integer emailId);

    int insert(EmailRecord record);

    int insertSelective(EmailRecord record);

    EmailRecord selectByPrimaryKey(Integer emailId);

    int updateByPrimaryKeySelective(EmailRecord record);

    int updateByPrimaryKey(EmailRecord record);
}