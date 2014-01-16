package control;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ManejadorBaseDeDatos {

    Connection conexion;

    public ManejadorBaseDeDatos() throws ClassNotFoundException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/bd_SurfWaves", "root", "");
        } catch (SQLException ex) {}
    }
    
    public ArrayList<String> obtenerPlayas() throws SQLException{
        
        ArrayList<String> nombres = new ArrayList();
        Statement instruccionSql;
        instruccionSql= conexion.createStatement();
        ResultSet resultado;
       
        resultado= instruccionSql.executeQuery("SELECT id_playa, nombre FROM playa");
        
        while (resultado.next()){      
            nombres.add(resultado.getString("nombre"));
        }
        instruccionSql.close();
        resultado.close();
        return nombres;
    }
    
    public String [] obtenerCaract (String playa) throws SQLException{
        
        String [] datos= new String[8];
        Statement instruccionSql;
        instruccionSql= conexion.createStatement();
        ResultSet resultado;
        
        resultado= instruccionSql.executeQuery("SELECT * FROM playa WHERE playa.nombre=\"" + playa + "\"");
        
        if(resultado.next()){
            datos[0]= resultado.getString("nombre");
            datos[1]= resultado.getString("lugar");
            datos[2]= resultado.getString("fondo");
            datos[3]= resultado.getString("tipo_ola");
            datos[4]= resultado.getString("nivel");
            datos[5]= resultado.getString("locales");
            datos[6]= resultado.getString("vestuarios");
            datos[7]= resultado.getString("alquiler");
        }
        instruccionSql.close();
        resultado.close();
        return datos;
    }
    
    public String [] obtenerMarea (String playa) throws SQLException{
        
        String [] datos= new String[5];
        Statement instruccionSql;
        instruccionSql= conexion.createStatement();
        ResultSet resultado;
        
        resultado= instruccionSql.executeQuery("SELECT * FROM mareas, playa WHERE mareas.id_marea=playa.id_marea AND playa.nombre=\"" + playa + "\"");
        
        if(resultado.next()){
            datos[0]= playa;
            datos[1]= resultado.getString("marea_alta");
            datos[2]= resultado.getString("marea_baja");
            datos[3]= resultado.getString("amanecer");
            datos[4]= resultado.getString("anochecer");
        }
        instruccionSql.close();
        resultado.close();
        return datos;
    }
    
    public String [] mejorSwell () throws SQLException{
        
        String [] datos= new String[5];
        Statement instruccionSql;
        instruccionSql= conexion.createStatement();
        ResultSet resultado;
        
        resultado= instruccionSql.executeQuery("SELECT marea_alta FROM mareas");
        double max_marea = 0;
        String marea_swell = "";
        while(resultado.next()){
            datos[0]= resultado.getString("marea_alta");
            System.out.println(datos[0]);
            String cortado= datos[0].substring(datos[0].length()-4,datos[0].length()-1);
            double value = Double.parseDouble(cortado);
            if (value > max_marea) {
                max_marea = value;
                System.out.println(max_marea);
                marea_swell = datos[0];
            }
        }
        
        resultado= instruccionSql.executeQuery("SELECT * FROM mareas WHERE mareas.marea_alta=\"" + marea_swell + "\"");
        
        if(resultado.next()){
            datos[0]= resultado.getString("id_marea");
            datos[1]= resultado.getString("marea_alta");
            datos[2]= resultado.getString("marea_baja");
            datos[3]= resultado.getString("amanecer");
            datos[4]= resultado.getString("anochecer");
        }
        
        resultado= instruccionSql.executeQuery("SELECT nombre FROM playa WHERE playa.id_marea=\"" + datos[0] + "\"");
        
        if(resultado.next()){
            datos[0]= resultado.getString("nombre");
        }
        
        instruccionSql.close();
        resultado.close();
        return datos;
    }
    
    public void cerrar() throws SQLException{
        conexion.close();
    }

}
