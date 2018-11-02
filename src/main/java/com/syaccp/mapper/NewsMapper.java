package com.syaccp.mapper;

import java.util.List;

public interface NewsMapper {
    int deleteByID(Integer id);

    int insert(News record);

    int insertSelective(News record);

    News selectById(Integer id);

    int update(News record);

    int updateById(News record);
    
    List<News> findAll();
}