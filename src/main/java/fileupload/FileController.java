package fileupload;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;
import ru.website.application.Contr;
import service.ImageService;


/**
 * Class for upload file
 * @author Pozndyakov Pavel
 */

@Controller
@Slf4j
@Setter
public class FileController
{  
	@Autowired
	private ImageService imageService;
	
	private List<String> images;
	
	private String pathToImages="src/main/resources/static/CSS/images/";
   
   
    @RequestMapping(value="/upload", method = RequestMethod.POST)
    public String uploadFile(@RequestParam("file") MultipartFile file, Model model, HttpServletResponse response, HttpServletRequest request) throws IOException
    {		
    	
        if (!file.isEmpty())
        {        	
            byte[] bytes;
			try(BufferedOutputStream stream= new BufferedOutputStream(new FileOutputStream(new File(pathToImages+file.getOriginalFilename())));)
			{				
				bytes = file.getBytes();				
	            stream.write(bytes);	 
	            log.info("The "+ file.getOriginalFilename()+" was upload successfully");	            
			} 
			catch (IOException e)
			{			
				log.error("Error while loading the file: "+e.getMessage());				
			}           
        } 
        
        images=imageService.getImages();
        for (int i=0; i<images.size(); i++)
		{
			log.info(images.get(i));
		}
        
    	model.addAttribute("images", imageService.getImages());
    	return "redirect:/Gallery";
    }
    
    @RequestMapping(value="/delete", method = RequestMethod.POST)
    public String deleteFile(@RequestParam("name") String name, Model model) throws IOException
    {    	   	
    	imageService.deleteImage(pathToImages+name);    	
    	model.addAttribute("images", imageService.getImages());
    	
    	return "Gallery";	
    }
}

