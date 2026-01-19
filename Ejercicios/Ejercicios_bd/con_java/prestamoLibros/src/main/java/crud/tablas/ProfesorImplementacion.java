package crud.tablas;
import modelos.Profesor;
import java.sql.*;
import conexion.bd.jdbc.Conexion;

public class ProfesorImplementacion implements ProfesorInterfaz {
    @Override
    public void crearProfesor(Profesor profesor) throws Exception {
        String sql = "INSERT INTO \"Ejercicio 4\".profesor (nombre) VALUES (?)";
        try (Connection conn = Conexion.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            stmt.setString(1, profesor.getNombre());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new Exception("Error al crear el profesor: " + e.getMessage());
        }
    }
    
    @Override
    public Profesor leerProfesor(int id) throws Exception {
        String sql = "SELECT id, nombre FROM \"Ejercicio 4\".profesor WHERE id = ?";
        try(Connection conn = Conexion.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS)) {
            stmt.setInt(1, id);
            try (ResultSet rs = stmt.executeQuery()){
                if(rs.next()){
                    int profesorId = rs.getInt("id");
                    String nombre = rs.getString("nombre");
                    return new Profesor(profesorId, nombre);
                }
            }
        } catch (SQLException e) {
            throw new Exception("Error al leer el profesor: " + e.getMessage());
        }
        return null; 
    }

    @Override
    public void actualizarProfesor(Profesor profesor) throws Exception{
        String sql = "UPDATE \"Ejercicio 4\".profesor SET nombre = ? WHERE id = ?";
        try(Connection conn = Conexion.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setString(1, profesor.getNombre());
                stmt.setInt(2, profesor.getId());
                stmt.executeUpdate();
        } catch (SQLException e) {
            throw new Exception("Error al actualizar el profesor: " + e.getMessage());
        }
    }
}
