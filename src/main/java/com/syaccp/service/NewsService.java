package com.syaccp.service;

import java.util.List;

import com.syaccp.mapper.News;


public interface NewsService {

	void insert(News record);
	
	List<News> findAll();

}