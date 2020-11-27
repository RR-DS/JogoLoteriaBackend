package br.com.caelum.vraptor.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.hibernate.validator.constraints.NotEmpty;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.dao.UsuarioDAO;
import br.com.caelum.vraptor.model.Usuario;
import br.com.caelum.vraptor.validator.SimpleMessage;
import br.com.caelum.vraptor.validator.Validator;

@Path("login")
@Controller
public class LoginController {
	
	@Inject HttpSession session;
	@Inject Validator validator;
	@Inject UsuarioDAO usuarioDao;
	@Inject Result result;

	@Get("")
	public void login() {
		Usuario usuarioLogado = (Usuario) session.getAttribute("usuarioLogado");
		if(usuarioLogado != null) {
			result.redirectTo(DashboardController.class).dashboard();;
		}
	}
	
	@Get("logout")
	public void logout() {
		session.setAttribute("usuarioLogado", null);
		result.redirectTo(this).login();
	}
	
	@Post("autenticar")
	public void autenticar(
			@NotEmpty(message = "{usuario.email.embranco}") String email,
			@NotEmpty(message = "{usuario.senha.embranco}") String senha) {
		validator.onErrorRedirectTo(this).login();
		
		//buscar usuario no banco de dados
		Usuario usuario = usuarioDao.existeUsuarioCom(email,senha);
		
		validator.addIf(usuario == null, new SimpleMessage("semUsuario","Email ou Senha Invalidos"));
		validator.onErrorRedirectTo(this).login();
		
		session.setAttribute("usuarioLogado", usuario);
		result.redirectTo(DashboardController.class).dashboard();
	}
	
}
