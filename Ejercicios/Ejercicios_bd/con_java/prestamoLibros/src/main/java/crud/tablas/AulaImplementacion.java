package crud.tablas;
import modelos.Aula;
import conexion.bd.jdbc.Conexion;
import java.sql.*;

public class AulaImplementacion implements AulaInterfaz {
    @Override
    public void crearAula(Aula aula) throws Exception {
        String sql = "INSERT INTO \"Ejercicio 4\".aula (\"nombreAula\") VALUES (?)";
        try (Connection conn = Conexion.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            stmt.setString(1, aula.getNombre());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new Exception("Error al crear el aula: " + e.getMessage());
        }
    }

    @Override
    public Aula leerAula(int id) throws Exception {
        String sql = "SELECT id, \"nombreAula\" FROM \"Ejercicio 4\".aula WHERE id = ?";
        try (Connection conn = Conexion.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    int aulaId = rs.getInt("id");
                    String nombre = rs.getString("nombreAula");
                    return new Aula(aulaId, nombre);
                }
            }
        } catch (SQLException e) {
            throw new Exception("Error al leer el aula: " + e.getMessage());
        }
        return null;
    }

    @Override
    public void actualizarAula(Aula aula) throws Exception {
        String sql = "UPDATE \"Ejercicio 4\".aula SET \"nombreAula\" = ? WHERE id = ?";
        try (Connection conn = Conexion.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, aula.getNombre());
            stmt.setInt(2, aula.getId());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new Exception("Error al actualizar el aula: " + e.getMessage());
        }
    }
}
