package br.com.ebix.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.ebix.dao.UsuarioDAO;
import br.com.ebix.entity.Login;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession(true);
		try {
			UsuarioDAO loginDao = new UsuarioDAO();
			Login login = new Login();
			login.setUsuario(req.getParameter("nome"));
			login.setSenha(req.getParameter("senha"));

			login = loginDao.existeLogin(login);

			if (login != null) {
				req.setAttribute("msgLogin", "Usuario Logado");
			    req.getSession().setAttribute("usuario", login);
				getServletContext().getRequestDispatcher("/seguro/menu.jsp").include(req, resp);

			} else {
				req.setAttribute("msg", "Usuario incorreto");
				req.getRequestDispatcher("index.jsp").forward(req, resp);
			}

		} catch (Exception e) {
			req.setAttribute("msg", "Usuario incorreto");
			req.getRequestDispatcher("index.jsp").forward(req, resp);
		}
	}
}
