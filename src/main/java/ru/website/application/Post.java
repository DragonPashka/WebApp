package ru.website.application;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Component
@NoArgsConstructor
@Data
public class Post
{	
	private String header;
	private String text;
	public String getHeader()
	{
		return header;
	}
	public void setHeader(String header)
	{
		this.header = header;
	}
	public String getText()
	{
		return text;
	}
	public void setText(String text)
	{
		this.text = text;
	}
	public Post(String header, String text)
	{
		super();
		this.header = header;
		this.text = text;
	}	
	

}
