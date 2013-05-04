package util;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class LocalSpringUtil {
	private static final String[] SPRING_CONFIG_LOCATION = {
		"classpath*:config/spring/*.xml"
	};
	
	private static volatile ApplicationContext context = null;
	
	public static final ApplicationContext get(){
		if(null == context){
			synchronized (LocalSpringUtil.class){
				context = new ClassPathXmlApplicationContext(SPRING_CONFIG_LOCATION);
			}
		}
		return context;
	}
	
	public static Object getBean(String beanId){
		Object object = get().getBean(beanId);
		return object;
	}
	
	public static <T> T getBean(String beanId,Class<T> beanClass){
		Object object = get().getBean(beanId,beanClass);
		if(object != null){
			return (T)object;
		}
		return null;
	}

}
