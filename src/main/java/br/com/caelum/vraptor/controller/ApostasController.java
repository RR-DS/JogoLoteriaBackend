package br.com.caelum.vraptor.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.interceptors.Logado;

@Path("apostas")
@Controller
public class ApostasController {

	@Get("") @Logado
	public void apostas(){
		
	}
}
