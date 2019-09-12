package com.ebix.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ebix.entity.Segurado;
import com.ebix.persistence.SeguradoDao;
import com.ebix.test.ErrorValida;

@WebServlet("/SeguradoController")
public class SeguradoController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// ${pageContext.request.contextPath}/ebix/cadastro
		boolean isFormValido = true;
		try {
			Segurado s = new Segurado();

			s.setNome(req.getParameter("nome"));
			s.setCpf(req.getParameter("cpf"));
			s.setRg(req.getParameter("rg"));
			s.setSexo(req.getParameter("marcacao"));
			s.setSeguros(req.getParameterValues("seguro"));
			s.setCorrentista(req.getParameter("correntista"));
			s.setDiasVisita(req.getParameterValues("visita"));
			
			ErrorValida validation = new ErrorValida();

			validation.validacao(s);
					
					ArrayList<String> error = validation.validacao(s);
					
					if (error.size() > 0) {
						
						StringBuffer erros = new StringBuffer();
						for (String valor : error) {
							erros.append(valor);
							erros.append("<br>");
						}
						
						req.setAttribute("erro",erros.toString());
						req.getRequestDispatcher("/cadastra.jsp").forward(req, resp);
					}else {
			
						SeguradoDao sd = new SeguradoDao();
						sd.criar(s);
						req.setAttribute("mensagem", "Dados Gravados");
						req.getRequestDispatcher("/index.jsp").forward(req, resp);
						
					}
					
			

		} catch (Exception e) {
			req.setAttribute("mensagem", e.getMessage());
		}
	}
}
