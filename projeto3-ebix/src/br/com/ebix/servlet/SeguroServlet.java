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

@WebServlet("/seguro/seguro")
public class SeguroServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			Seguro s = new Seguro();

			s.setSeguro(req.getParameter("seguro"));
			s.setValor(Double.parseDouble(req.getParameter("valor")));

			DaoGenerico<Seguro> dao = new DaoGenerico<>();

			if (req.getParameter("txtId") == null) {
				dao.saveOrUpdate(s);
				getServletContext().getRequestDispatcher("/seguro/listaSeguro").forward(req, resp);
			} else {
				String numeroId = req.getParameter("txtId");
				s.setIdentificacao(Integer.parseInt(numeroId));
				dao.alterar(s);
				getServletContext().getRequestDispatcher("/seguro/listaSeguro").forward(req, resp);
			}

			req.setAttribute("msg", "Seguro cadastrado");

		} catch (Exception e) {
			req.setAttribute("msg", "Erro ao cadastra o seguro!");
			getServletContext().getRequestDispatcher("/seguro/cadastraSeguro.jsp").forward(req, resp);
		}

	}
}
