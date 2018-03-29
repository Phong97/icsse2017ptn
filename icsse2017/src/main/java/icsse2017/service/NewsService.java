package icsse2017.service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import icsse2017.dao.NewsRepository;
import icsse2017.model.News;

@Service
@Transactional
public class NewsService {

	private final NewsRepository newsRepository;

	public NewsService(NewsRepository newsRepository) {
		super();
		this.newsRepository = newsRepository;
	}
	
	public List<News> findAll(){
		List<News> newss = new ArrayList<>();
		for(News news:newsRepository.findAll()) {
			newss.add(news);
		}
		Collections.reverse(newss);
		return newss;
	}
	
	public News findNews(int id) {
		return newsRepository.findById(id).get();
	}
	
	public void save(News news) {
		newsRepository.save(news);
	}
	
	public void delete (int id) {
		newsRepository.deleteById(id);
	}
}