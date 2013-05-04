package filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vo.Staff;

public class AuthenticalFilter implements Filter {
	
	private String loginUrl;
	private List<String> excludeUrlList = new ArrayList<String>();

	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest)req;
		HttpServletResponse response = (HttpServletResponse)resp;
		
		request.setCharacterEncoding("UTF-8");
		String uri = request.getRequestURI();
		String paths[] = uri.split("\\?");
		String path = paths[0];
		boolean isLogin = false;
		if(!isExcludeUrl(path)){
			HttpSession session = request.getSession(false);
			if(session != null){
				Staff staffInfo = (Staff)session.getAttribute("STAFF_INFO");
				if(staffInfo != null){
					isLogin = true;
				}
			}
			
			if(!isLogin){
				loginUrl = request.getContextPath()+"/note/login.jsp";
				//判断是否ajax请求
				String ajax = request.getHeader("X-Requested-With");
				if("XMLHttpRequest".equals(ajax)){
					response.setHeader("Cache-Control", "no-cache");
					response.setHeader("timeout", loginUrl);
					response.sendError(499,"timeout");
				}else{
					response.sendRedirect(loginUrl);
				}
			}
		}
		
		chain.doFilter(req, resp);

	}

	public void init(FilterConfig config) throws ServletException {
		loginUrl = config.getInitParameter("loginUrl");
		
		//不需要过滤的URL
		String excludeUrlString = config.getInitParameter("excludeUrl");
		if(excludeUrlString != null && !excludeUrlString.equals("")){
			String excludeUrls[] = excludeUrlString.split(",");
			for(String excludeUrl : excludeUrls){
				excludeUrlList.add(excludeUrl);
			}
		}
	}
	
	private boolean isExcludeUrl(String url){
		for(String excludeUrl : excludeUrlList){
			if(url.indexOf(excludeUrl)>-1){
				return true;
			}
		}
		return false;
	}

}
