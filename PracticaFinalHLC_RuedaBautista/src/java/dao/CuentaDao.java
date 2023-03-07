package dao;

import model.Cuenta;
import java.util.ArrayList;

public interface CuentaDao {

    public ArrayList<Cuenta> getCuentas();

    public ArrayList<Cuenta> getCuentaByUsuario(Integer usuarioNumero);

    public double getRecargo(int numero);

    public void insertCuenta(Cuenta cuenta);

    public void editCuenta(Cuenta cuenta);

    public String getEmail(int id);

}
