package util;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

public class SpringUtil implements ServletContextListener{
	
	private static WebApplicationContext springContext;
	
	private static volatile ApplicationContext context = null;
	
	public SpringUtil(){
		super();
	}
	
	public void contextInitialized(ServletContextEvent event){
		springContext = WebApplicationContextUtils.getWebApplicationContext(event.getServletContext());
	}
	
	public void contextDestroyed(ServletContextEvent event){}
	
	public static ApplicationContext ApplicationContext(){
		return springContext;
	}
	
	public static Object getBean(String beanId){
		Object object = springContext.getBean(beanId);
		return object;
	}

}
