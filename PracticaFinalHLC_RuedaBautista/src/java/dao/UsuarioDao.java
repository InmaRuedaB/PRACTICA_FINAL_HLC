package dao;

import model.Usuario;
import java.util.ArrayList;

public interface UsuarioDao {

    public ArrayList<Usuario> getUsuarios();

    public ArrayList<Usuario> getUsuarios(String user, String password);

    public ArrayList<Usuario> getUsuariosConWhere(String user, String password);

    public void insertUsuario(Usuario usuario);

    public void editUsuario(Usuario usuario);

    public void deleteUsuario(Usuario usuario);

    public String nombreUsuario(int id);

}
