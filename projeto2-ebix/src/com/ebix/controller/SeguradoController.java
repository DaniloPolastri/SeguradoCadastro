package com.ebix.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ebix.entity.Segurado;
import com.ebix.persistence.SeguradoDao;

@WebServlet("/SeguradoController")
public class SeguradoController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//${pageContext.request.contextPath}/ebix/cadastro
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
			
			SeguradoDao sd = new SeguradoDao();
			sd.criar(s);
				
			req.setAttribute("mensagem", "<div class=\"mt-3 alert alert-primary\" role=\"alert\">\r\n" + 
					"  Usuário Cadastrado!\r\n" + 
					"</div>");
		
			
		} catch (Exception e) {
			req.setAttribute("mensagem", "<div class=\"mt-3 alert alert-danger\" role=\"alert\">\r\n" + 
					"  Erro ao salvar\r\n" + 
					"</div>");
		} finally {
			req.getRequestDispatcher("/").forward(req, resp);
			
		} 
	}
}
