package icsse2017.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import icsse2017.model.Account;
import icsse2017.service.AccountService;
import icsse2017.service.NewsService;

@Controller
public class HomeController {
	@Autowired
	private NewsService newsService;
	@Autowired
	private AccountService accountService;
	
	@GetMapping("/home")
	public String Home(HttpServletRequest request) {
		request.setAttribute("newss", newsService.findAll());
		return "home";
	}
	
	@GetMapping("/contact")
	public String Contact(HttpServletRequest request) {
		request.setAttribute("newss", newsService.findAll());
		return "contact";
	}
	
	@GetMapping("/about_committees")
	public String About_Committees(HttpServletRequest request) {
		request.setAttribute("newss", newsService.findAll());
		return "about_committees";
	}
	
	@GetMapping("/about_hcmute")
	public String About_Hcmute(HttpServletRequest request) {
		request.setAttribute("newss", newsService.findAll());
		return "about_hcmute";
	}
	
	@GetMapping("/about_icsse")
	public String About_Icsse(HttpServletRequest request) {
		request.setAttribute("newss", newsService.findAll());
		return "about_icsse";
	}
	
	@GetMapping("/news")
	public String News(@RequestParam int id, HttpServletRequest request) {
		request.setAttribute("news", newsService.findNews(id));
		request.setAttribute("newss", newsService.findAll());
		return "news";
	}
	
	@GetMapping("/program")
	public String Program(HttpServletRequest request) {
		request.setAttribute("newss", newsService.findAll());
		return "program";
	}
	
	@GetMapping("/publication")
	public String Publication(HttpServletRequest request) {
		request.setAttribute("newss", newsService.findAll());
		return "publication";
	}	
	
	@GetMapping("/logout")
	public String Logout(HttpSession session, HttpServletRequest request) {
		request.setAttribute("newss", newsService.findAll());
		session.invalidate();
		return "home";
	}		
	
	@PostMapping("/checklogin")
	public String checklogin(@RequestParam(value="username", required=true) String username,
			@RequestParam(value="password", required=true) String password, HttpSession session,HttpServletRequest request) {
		request.setAttribute("newss", newsService.findAll());
		Account user = accountService.CheckLogin(username, password);
		if(user != null) {
			session.setAttribute("user", user);
			return "redirect:/manage_news";
		} else return "home";
	}
	
}
