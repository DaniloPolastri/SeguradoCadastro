package br.com.ebix.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.ebix.dao.DaoGenerico;
import br.com.ebix.entity.Segurado;
import br.com.ebix.entity.Seguro;

@WebServlet("/seguro/segurado")
public class SeguradoServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			Segurado s = new Segurado();

			s.setNome(req.getParameter("nome"));
			s.setCpf(req.getParameter("cpf"));
			s.setRg(req.getParameter("rg"));
			s.setSexo(req.getParameter("marcacao"));
			s.setCorrentista(req.getParameter("correntista"));
			s.setDiasDeVisita(req.getParameter("visita"));
			s.setData_nasc(req.getParameter("data"));
			s.setDataDeCadastro(new Date());
			
			String[] seguro = req.getParameterValues("segurocadastrado");
			List<Seguro> listseguros = new ArrayList<>();
			
			for (String seguroid : seguro) {
				Seguro seg = new Seguro();
				seg.setIdentificacao(Integer.valueOf(seguroid));
				listseguros.add(seg);
			}
			
			s.setSeguros(listseguros);
			
			
			DaoGenerico<Segurado> dao = new DaoGenerico<>();
			br.com.ebix.erro.ErrorValidaSegurado validar = new br.com.ebix.erro.ErrorValidaSegurado();
			validar.validacao(s);

			ArrayList<String> error = validar.validacao(s);

			if (error.size() > 0) {

				StringBuffer erros = new StringBuffer();
				for (String valor : error) {
					erros.append(valor);
					erros.append("<br>");
				}
				dao.saveOrUpdate(s);
				req.setAttribute("erro", erros.toString());
				getServletContext().getRequestDispatcher("/seguro/cadastraSegurado").forward(req, resp);
			} else {
				req.setAttribute("mensagem", "Dados Gravados");
				dao.saveOrUpdate(s);
 				getServletContext().getRequestDispatcher("/seguro/listaSegurado").forward(req, resp);

			}

		} catch (Exception e) {
			req.setAttribute("msg", "Erro ao cadastra o segurado!");
			getServletContext().getRequestDispatcher("/seguro/cadastraSegurado.jsp").forward(req, resp);
		}
	}
	
//	String[] segurosString = request.getParameterValues("seguro");
//	List<Seguro> seguros = new ArrayList<>();
//	for (String idseguro : segurosString) {
//		Seguro seguro = new Seguro();
//		seguro.setIdSeguro(Integer.valueOf(idseguro));
//		seguros.add(seguro);
//	}
//	segurado.setSeguros(seguros);
	
}
