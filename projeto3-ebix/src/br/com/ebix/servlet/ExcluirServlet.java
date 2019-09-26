package br.com.ebix.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.ebix.dao.DaoGenerico;
import br.com.ebix.entity.Segurado;
import br.com.ebix.entity.Seguro;

@WebServlet("/seguro/excluir")
public class ExcluirServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			String acao = req.getParameter("action");
			
			switch (acao) {
			case "delsegurado":
				DaoGenerico<Segurado> daosegurado = new DaoGenerico<>();
				String idsegurado = req.getParameter("id");
				daosegurado.remove(Segurado.class, Integer.parseInt(idsegurado));
				List<Segurado> lista = daosegurado.findAllSegurado();
				req.getAttribute("seguros");
				getServletContext().getRequestDispatcher("/seguro/listasegurado.jsp").forward(req, resp);
				break;
			case "delseguro":
				DaoGenerico<Seguro> daoseguro = new DaoGenerico<>();
				String idseguro = req.getParameter("id");
				daoseguro.remove(Seguro.class, Integer.parseInt(idseguro));
				List<Segurado> listaseguro = daoseguro.findAllSegurado();
				req.getAttribute("seguros");
				getServletContext().getRequestDispatcher("/seguro/listaseguro.jsp").forward(req, resp);
				break;
			case "updseguro":
				DaoGenerico<Seguro> daoalterar = new DaoGenerico<>();
				String idupdseguro = req.getParameter("id");
				//buscar o registro para exibir
				Seguro seguro = daoalterar.findById(Seguro.class, Integer.parseInt(idupdseguro));
				req.setAttribute("obj", seguro);
				getServletContext().getRequestDispatcher("/seguro/AtualizarSeguro.jsp").forward(req, resp);
				break;
			}
		
	}
}
