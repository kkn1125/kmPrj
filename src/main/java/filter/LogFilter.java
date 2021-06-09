package filter;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

@WebFilter(urlPatterns = {"/*"})
public class LogFilter implements Filter
{

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("필터 초기화 ...");
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		response.setCharacterEncoding("UTF-8");
		// 인코딩
		System.out.println(" 접속한 클라이언트 IP : " + request.getRemoteAddr());
		long start = System.currentTimeMillis();
        System.out.println(" 접근한 URL 경로 : " + getURLPath(request));
		System.out.println(" 요청 처리 시작 시각 : " + getCurrentTime());
		chain.doFilter(request,response);
		long end = System.currentTimeMillis();		
		System.out.println(" 요청 처리 종료 시각 : " + getCurrentTime());
		System.out.println(" 요청 처리 소요 시간 : " + (end-start)+ "ms ");
		System.out.println("=======================================================");
	}

	@Override
	public void destroy() {
		System.out.println("필터 해제 ...");
	}
	
	private String getURLPath(ServletRequest request) {
		HttpServletRequest req;
		String currentPath="";
		String queryString=""; 
		if(request instanceof HttpServletRequest){
			req = (HttpServletRequest)request;
			currentPath = req.getRequestURI();
			queryString = req.getQueryString();
			queryString = queryString == null ? "" : "?" + queryString;
		}
		return currentPath+queryString;
	}
	
	private String getCurrentTime() {
		DateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Calendar calendar = Calendar.getInstance();
		calendar.setTimeInMillis(System.currentTimeMillis());
		return formatter.format(calendar.getTime());
	}
	
}
