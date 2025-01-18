package org.edutecno.dao.impl;

import java.util.List;

import org.edutecno.dao.UsuarioDao;
import org.edutecno.modelo.UsuarioEntity;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class UsuarioImpl implements UsuarioDao {
  private final SessionFactory factory;

  public UsuarioImpl() {
    factory = new Configuration().configure().buildSessionFactory();
  }

  @Override
  public void agregarUsuario(UsuarioEntity usuario) {
    try (Session session = factory.openSession()) {
      session.beginTransaction();
      session.persist(usuario);
      session.getTransaction().commit();
    } catch (Exception e) {
      e.printStackTrace();
    }
  }

  @Override
  public List<UsuarioEntity> listarUsuarios() {
    try (Session session = factory.openSession()) {
      return session.createQuery("from UsuarioEntity" , UsuarioEntity.class).list();
    }
  }

  @Override
  public Boolean eliminarUsuario(Long id, String password) {
    try (Session session = factory.openSession()) {
      session.beginTransaction();
      UsuarioEntity usuario = session.get(UsuarioEntity.class, id);
      if (usuario != null & usuario.getPassword().equals(password)) {
        session.remove(usuario);
        session.getTransaction().commit();
        return true;
      }
      session.getTransaction().commit();
      return false;
    }
  }

  @Override
  public void actualizarUsuario(UsuarioEntity usuario) {
    try (Session session = factory.openSession()) {
      session.beginTransaction();
      session.merge(usuario);
      session.getTransaction().commit();
    }
  }

  @Override
  public UsuarioEntity buscarUsuarioPorId(Long id) {
    try (Session session = factory.openSession()){
      UsuarioEntity usuario = session.createQuery("from UsuarioEntity u where u.id = :id", UsuarioEntity.class)
          .setParameter("id", id)
          .uniqueResult();
      if(usuario != null){
        session.refresh(usuario);
      }
      return usuario;
    }
  }

  @Override
  public UsuarioEntity login(String username, String password) {
    try (Session session = factory.openSession()) {
      return session.createQuery(
          "FROM UsuarioEntity u WHERE u.userName = :username AND u.password = :password",UsuarioEntity.class)
          .setParameter("username", username)
          .setParameter("password", password)
          .uniqueResult();
    } catch (Exception e) {
      e.printStackTrace();
      return null;
    }
  }

  @Override
  public UsuarioEntity buscarUsuarioPorNombreUsuario(String username) {
    try (Session session = factory.openSession()){
      UsuarioEntity usuario = session.createQuery("FROM UsuarioEntity u WHERE u.userName = :username", UsuarioEntity.class)
          .setParameter("username", username)
          .uniqueResult();
      return usuario;
    }catch (Exception e){
      e.printStackTrace();
      return null;
    }
  }

}
