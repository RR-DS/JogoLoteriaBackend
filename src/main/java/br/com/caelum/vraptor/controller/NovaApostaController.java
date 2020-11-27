package br.com.caelum.vraptor.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.interceptors.Logado;

@Path("novaaposta")
@Controller
public class NovaApostaController {

	@Get("") @Logado
	public void novaAposta(){
		
	}
}
