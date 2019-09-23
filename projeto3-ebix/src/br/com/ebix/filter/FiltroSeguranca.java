package br.com.ebix.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.ebix.entity.Login;

public class FiltroSeguranca implements Filter {
	public void doFilter(ServletRequest req, ServletResponse res,FilterChain chain) throws IOException, ServletException {

		HttpSession session = ((HttpServletRequest) req).getSession(true);
		Login lg = (Login) session.getAttribute("usuario");

		if (lg == null) {
			session.setAttribute("msgLogin", "Você não está logado no sistema!");
			((HttpServletResponse) res).sendRedirect("../index.jsp");
		} else {
			chain.doFilter(req, res);
		}
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
	}
}
