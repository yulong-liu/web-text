package com.syaccp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.syaccp.mapper.News;
import com.syaccp.mapper.NewsMapper;

@Service("newsService")
public class NewsServiceImpl implements NewsService {
	
	
	
	
	public NewsServiceImpl() {
		super();
		System.out.println("NewsServiceImpl");
	}


	@Resource
	private NewsMapper newsMapper;
	
	
	@Override
	public void  insert(News record){
		newsMapper.insert(record);
		
	}


	@Override
	public List<News> findAll() {
		
		return newsMapper.findAll();
	}

}
