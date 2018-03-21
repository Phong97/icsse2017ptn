package icsse2017.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import icsse2017.service.NewsService;
import icsse2017.model.News;
import icsse2017.service.AccountService;


@Controller
public class NewsController {
	private static final String PATH = "manage_news";
	@Autowired
	private NewsService newsService;
	@Autowired
	private AccountService accountService;
	
	@GetMapping("/manage_news")
	public String doGet(HttpServletRequest request) {
		request.setAttribute("newss", newsService.findAll());
		request.setAttribute("accounts", accountService.findAll());
		request.setAttribute("announce", "");
		request.setAttribute("mode", "LIST");
		return PATH;
	}
	
	@GetMapping("/delete-news")
	public String deleteNews(@RequestParam int id, HttpServletRequest request) {
		try {
			newsService.delete(id);
			request.setAttribute("announce", "You delete successfully");
		} catch (Exception e) {
			request.setAttribute("announce", "Error when you delete news");
		}
		request.setAttribute("newss", newsService.findAll());
		request.setAttribute("accounts", accountService.findAll());
		request.setAttribute("mode", "LIST");
		return PATH;
	}
	
	@GetMapping("/add-news")
	public String addNews(HttpServletRequest request) {
		request.setAttribute("announce", "");
		request.setAttribute("newss", newsService.findAll());
		request.setAttribute("accounts", accountService.findAll());
		request.setAttribute("mode", "NEW");
		return PATH;
	}
	
	@GetMapping("/update-news")
	public String updateNews(@RequestParam int id, HttpServletRequest request) {
		request.setAttribute("announce", "");
		request.setAttribute("news", newsService.findNews(id));
		request.setAttribute("accounts", accountService.findAll());
		request.setAttribute("mode", "UPDATE");
		return PATH;
	}
	
	@PostMapping("save-news")
	public String saveNews(@ModelAttribute News news, BindingResult bindingResult,
			HttpServletRequest request) {

		String announce = null;		
		if(news.getId()==0)
		{
			announce = "add new news";
		} else announce = "update news";
		
		try {
			request.setCharacterEncoding("UTF-8");
			newsService.save(news);
				request.setAttribute("announce", "You "+ announce +" successfully");
		} catch (Exception e) {
				request.setAttribute("announce", "Error when you " + announce);
		}
			
		request.setAttribute("newss", newsService.findAll());
		request.setAttribute("accounts", accountService.findAll());
		request.setAttribute("mode", "LIST");
		return PATH;
	}
}
