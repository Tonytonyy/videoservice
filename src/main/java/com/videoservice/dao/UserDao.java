package com.videoservice.dao;

import com.videoservice.pojo.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface UserDao {
    public Long insertUser(User user);
    public User findUserbyName(@Param("userName") String userName);
}
