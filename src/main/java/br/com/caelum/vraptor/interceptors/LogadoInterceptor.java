package br.com.caelum.vraptor.interceptors;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import br.com.caelum.vraptor.AroundCall;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.controller.LoginController;
import br.com.caelum.vraptor.interceptor.AcceptsWithAnnotations;
import br.com.caelum.vraptor.interceptor.SimpleInterceptorStack;
import br.com.caelum.vraptor.model.Usuario;

@Intercepts
@AcceptsWithAnnotations(Logado.class)
public class LogadoInterceptor {
	
	@Inject HttpSession session;
	@Inject Result result;

	@AroundCall
	public void continuaSeOUsuarioEstaLogado(SimpleInterceptorStack stack) {
		Usuario usuarioLogado = (Usuario) session.getAttribute("usuarioLogado");
		if(usuarioLogado == null) {
			result.redirectTo(LoginController.class).login();
		}else {
			stack.next();
		}
	}
}
