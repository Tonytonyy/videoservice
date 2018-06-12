package com.videoservice.dao;

import com.videoservice.pojo.PickVideo;
import com.videoservice.pojo.Video;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface PickVideoDao {
    public PickVideo findPackVideobyId(@Param("id") long id);
    public long insert(PickVideo pickVideo);
}
