package crud.tablas;
import modelos.Colegio;
import conexion.bd.jdbc.Conexion;
import java.sql.*;

public class ColegioImplementacion implements ColegioInterfaz {
    @Override
    public void crearColegio(Colegio colegio) throws Exception {
        String sql = "INSERT INTO \"Ejercicio 4\".colegio (\"nombreColegio\") VALUES (?)";
        try (Connection conn = Conexion.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            stmt.setString(1, colegio.getNombre());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new Exception("Error al crear el colegio: " + e.getMessage());
        }
    }

    @Override
    public Colegio leerColegio(int id) throws Exception {
        String sql = "SELECT id, \"nombreColegio\" FROM \"Ejercicio 4\".colegio WHERE id = ?";
        try (Connection conn = Conexion.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    int colegioId = rs.getInt("id");
                    String nombre = rs.getString("nombreColegio");
                    return new Colegio(colegioId, nombre);
                }
            }
        } catch (SQLException e) {
            throw new Exception("Error al leer el colegio: " + e.getMessage());
        }
        return null;
    }

    @Override
    public void actualizarColegio(Colegio colegio) throws Exception {
        String sql = "UPDATE \"Ejercicio 4\".colegio SET \"nombreColegio\" = ? WHERE id = ?";
        try (Connection conn = Conexion.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, colegio.getNombre());
            stmt.setInt(2, colegio.getId());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new Exception("Error al actualizar el colegio: " + e.getMessage());
        }
    }
}
