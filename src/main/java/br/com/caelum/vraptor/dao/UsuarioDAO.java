package br.com.caelum.vraptor.dao;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import br.com.caelum.vraptor.model.Usuario;

@RequestScoped
public class UsuarioDAO extends DAO<Usuario> {

	@Inject
	public UsuarioDAO(EntityManager em) {
		super(em, Usuario.class);
	}
	
	@Deprecated public UsuarioDAO() {this(null);}

	public Usuario existeUsuarioCom(String email, String senha) {
		
		String jpql = "select u from Usuario as u where u.email = :pEmail and u.senha = :pSenha";
		Query query = em.createQuery(jpql);
		query.setParameter("pEmail", email);
		query.setParameter("pSenha", senha);
		
		Usuario usuario;
		try{
		  usuario = (Usuario) query.getSingleResult();
		}catch (NoResultException e) {
			usuario = null;
		}
		return usuario;
	}

}
