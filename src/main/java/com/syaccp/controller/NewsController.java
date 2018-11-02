package com.syaccp.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.syaccp.mapper.News;
import com.syaccp.mapper.NewsMapper;
import com.syaccp.service.NewsService;
import com.syaccp.util.ResponseUtils;

@Controller
@RequestMapping("/news")
public class NewsController {
	
	@Resource
	private NewsService newsService;

	public NewsController() {
		System.out.println("Textaction");
	}
	 @ResponseBody
	@RequestMapping("")
	public List<News> list(String newname){
		
	    List<News> list=newsService.findAll();
	    for (News news : list) {
			System.out.println(news.getTitle());
		}
		return list;
	}
	
	@RequestMapping(value="/save")
    public String save(News news){
    	System.out.println("TextAction save");
    	System.out.println(news.getContent());
    	return "";
    }
	@RequestMapping("/add")
	public String add(){
		
		return "news/news-add";
	}
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable(value="id")int id){
		System.out.println(id);
		return "redirect:/news";
	}
	
	@ResponseBody
    @RequestMapping("/axaj")
	public String axaj(HttpServletResponse response){
		String sql="撒大声地所";
		ResponseUtils.render(response, "application/json;charset=UTF-8", sql);
		return sql;
	}
	
	
}
