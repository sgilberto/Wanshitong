package ar.com.sgilberto.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ar.com.sgilberto.dao.LoginDao;
import ar.com.sgilberto.entity.Usuario;
import ar.com.sgilberto.model.UsuarioDto;

@Service
public final class LoginServiceImpl implements LoginService {

	@Autowired
	private LoginDao loginDao;

	@Override
	public boolean validateUser(UsuarioDto usuario) {

		Usuario usuarioEntity = new Usuario();
		usuarioEntity.setUsername(usuario.getUsername());
		usuarioEntity.setPassword(usuario.getPassword());

		return this.loginDao.validateUser(usuarioEntity);

	}

}