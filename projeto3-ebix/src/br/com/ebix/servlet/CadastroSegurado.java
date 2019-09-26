package br.com.ebix.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.ebix.dao.DaoGenerico;
import br.com.ebix.entity.Seguro;

@WebServlet("/seguro/cadastraSegurado")
public class CadastroSegurado extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		DaoGenerico<Seguro> dao = new DaoGenerico<Seguro>();
		List<Seguro> segurolist = new ArrayList<Seguro>();
		segurolist = dao.findAllSeguro();
		request.setAttribute("seguros", segurolist);

		getServletContext().getRequestDispatcher("/seguro/cadastraSegurado.jsp").forward(request, response);
		
	}
}
