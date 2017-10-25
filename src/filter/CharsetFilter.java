//package filter;
//
//import javax.servlet.*;
//import java.io.IOException;
//
////@WebFilter("/*")
//public class CharsetFilter implements Filter {
//
//	public CharsetFilter() {
//	}
//
//	private String encoding;
//
//	public void init(FilterConfig config) throws ServletException {
//		encoding = config.getInitParameter("requestEncoding");
//
//		if (encoding == null)
//			encoding = "UTF-8";
//	}
//
//	public void doFilter(ServletRequest request, ServletResponse response, FilterChain next)
//			throws IOException, ServletException {
//		if (null == request.getCharacterEncoding())
//			request.setCharacterEncoding(encoding);
//
//		response.setContentType("text/html; charset=UTF-8");
//		response.setCharacterEncoding("UTF-8");
//
//		next.doFilter(request, response);
//	}
//
//	public void destroy() {
//	}
//
//}
