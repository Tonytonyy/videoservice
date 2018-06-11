package com.videoservice.dao;

import com.videoservice.pojo.Video;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface VideoDao {
    public Video findVideosbySelf(@Param("id") long id);
    public List<Video> listVideosByType(@Param("type") String type);
    public Long insertVideo(Video video);
}
