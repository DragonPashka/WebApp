package service;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;

@Service
@Scope("prototype")
@Slf4j
public class ImageService
{	
	
	public List<String> getImages() 
	{
	    File folder=new File("./src/main/resources/static/CSS/images");
	    File[] files=folder.listFiles();
	    List<String> names=new ArrayList<>(files.length);
	    for(int i=0; i<files.length; i++)
	    {
	    	if (files[i].exists())
	    	names.add("/CSS/Images/"+files[i].getName());
	    }
	    
	    return names;
	}
		
	public void deleteImage(String name)
	{	
		ClassLoader loader = Thread.currentThread().getContextClassLoader();			
		try
		{
			File file=new File(name);
			Files.delete(file.toPath());
			log.info("The "+name+" was deleted in" + file.getParent());			
				
		} 
		catch (IOException e)
		{
			log.error("Error while deleting the file: "+e);
		} 
		
	}	

}
