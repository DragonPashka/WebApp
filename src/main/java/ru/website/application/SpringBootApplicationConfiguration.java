package ru.website.application;

import javax.annotation.Generated;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages = { "ru.website.application", "service", "fileupload" })
public class SpringBootApplicationConfiguration
{

}