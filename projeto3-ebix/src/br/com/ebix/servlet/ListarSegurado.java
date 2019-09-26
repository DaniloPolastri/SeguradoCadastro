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
import br.com.ebix.entity.Segurado;

@WebServlet("/seguro/listaSegurado")
public class ListarSegurado extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		DaoGenerico<Segurado> dao = new DaoGenerico<>();
		List<Segurado> seguradolist = new ArrayList<>();
		seguradolist = dao.findAllSegurado();
		req.setAttribute("segurados", seguradolist);
		
		getServletContext().getRequestDispatcher("/seguro/listasegurado.jsp").forward(req, resp);
	}
}
