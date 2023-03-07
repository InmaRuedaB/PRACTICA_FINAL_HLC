package dao;

import java.util.ArrayList;
import model.Mensaje;

public interface MensajeDao {

    public ArrayList<Mensaje> getMensajes();

    public ArrayList<Mensaje> getMensajesUsuario(int id);

    public Mensaje getMensaje(int id);
}
