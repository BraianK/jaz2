package web.filters;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import registration.Registration;

@WebFilter("/adminPanel")
public class AdminPanelFilter implements Filter{
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpSession session = httpRequest.getSession();		
		
		if (session.getAttribute("userData") == null) {
			request.setAttribute("errorMessage", "Aby skorzysta� z tej podstrony nale�y zalogowa� si�");
			request.getRequestDispatcher("/").forward(request, response);
		} else {
			Registration registration = (Registration) session.getAttribute("userData");
			if (registration.getIsAdmin()) {
				chain.doFilter(request, response);				
			} else {
				request.setAttribute("errorMessage", "Nie masz premium!");
				request.getRequestDispatcher("/").forward(request, response);
			}
		}	
	}

	@Override
	public void destroy() {

	}

	@Override
	public void init(FilterConfig arg0) {

	}

}

