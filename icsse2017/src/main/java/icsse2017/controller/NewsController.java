package icsse2017.controller;

import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.GetObjectRequest;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.S3Object;

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
		request.setAttribute("news", newsService.findNewsById(id));
		request.setAttribute("accounts", accountService.findAll());
		request.setAttribute("mode", "UPDATE");
		return PATH;
	}
	
	@PostMapping("save-news")
	public String saveNews(@ModelAttribute News news, BindingResult bindingResult,
			HttpServletRequest request, @RequestAttribute("file") MultipartFile file) {

		String announce = null;	
		String link="";
		if(news.getId()==0)
		{
			announce = "add new news";
		} else announce = "update news";
		
		try {
			request.setCharacterEncoding("UTF-8");
			newsService.save(news);
			news = newsService.findNewsByTitle(news.getTitle());
			//check the file
			
			if (file.isEmpty()) {
	            System.out.println( "Please select a file to upload");
	            return null;
	        }
			
			//(access key , sceret key)
			BasicAWSCredentials creds = new BasicAWSCredentials("AKIAI7EUCEFBT652QYLA", "/JA6JdeuBu2g51KRXEacjbvR6sUw8TlwlvhApV9K"); 
			
			AmazonS3 s3client = AmazonS3Client.builder()
				    .withRegion("ap-southeast-1")
				    .withCredentials(new AWSStaticCredentialsProvider(creds))
				    .build();
			
			String bucketName = "bucketdemouploadfile";
			try{

				InputStream is = file.getInputStream();
				
				//save on s3 with public read access
				s3client.putObject(new PutObjectRequest(bucketName, file.getOriginalFilename(), is ,new ObjectMetadata()).withCannedAcl(CannedAccessControlList.PublicRead));
				
				//get a object
				S3Object s3object = s3client.getObject(new GetObjectRequest(bucketName, file.getOriginalFilename()));		
				
				//add to model
			 link = s3object.getObjectContent().getHttpRequest().getURI().toString();
				
			}catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			news.setLink(link);
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
