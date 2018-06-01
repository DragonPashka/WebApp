package ru.website.application;

import java.util.ArrayList;
import java.util.List;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.slf4j.Slf4j;
import service.ImageService;


@Controller
@Slf4j
public class Contr
{
	@Autowired
	private ImageService imageService;
	
	public static Post post=new Post();
	
	private static List<Post> posts = new ArrayList<>();
	
	private List<String> images=new ArrayList<>();
	
	@RequestMapping(value = { "/", "/index" }, method = RequestMethod.GET)
	public String hello(HttpServletRequest request, Model model)
	{
		posts=new ArrayList<Post>();
		posts.add(new Post("Heade 1", "sdflsdjfsdjfpsjdfposjdfposjdfsd"));
		posts.add(new Post("Heade 2", "ddddddddddddddddddd"));

		model.addAttribute("posts", posts);
		return "index";
		
	}
	
	@RequestMapping(value = { "/Add", "/AddPost" }, method = RequestMethod.GET)
	public String addPost( Model model)
	{		
		images=imageService.getImages();
		model.addAttribute("images", images);		
		
		
		return "AddPost";		
	}
	
	@RequestMapping(value = { "/Get" }, method = RequestMethod.POST)
	public String get(HttpServletRequest request)
	{		
		post.setHeader(null);
		post.setText(null);
		return "index";		

	}
	
	@RequestMapping(value = { "/Gallery" }, method = RequestMethod.GET)
	public String allGalery( Model model)
	{		
		images=imageService.getImages();
		
		model.addAttribute("images", images);		
		
		return "Gallery";		
	}

}