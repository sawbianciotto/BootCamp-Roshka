package crud.tablas;
import modelos.Asignatura;
import conexion.bd.jdbc.Conexion;
import java.sql.*;

public class AsignaturaImplementacion implements AsignaturaInterfaz {
    @Override
    public void crearAsignatura(Asignatura asignatura) throws Exception {
        String sql = "INSERT INTO \"Ejercicio 4\".asignatura (\"asignaturaNombre\") VALUES (?)";
        try (Connection conn = Conexion.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            stmt.setString(1, asignatura.getNombre());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new Exception("Error al crear la asignatura: " + e.getMessage());
        }
    }

    @Override
    public Asignatura leerAsignatura(int id) throws Exception {
        String sql = "SELECT id, \"asignaturaNombre\" FROM \"Ejercicio 4\".asignatura WHERE id = ?";
        try (Connection conn = Conexion.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    int asignaturaId = rs.getInt("id");
                    String nombre = rs.getString("asignaturaNombre");
                    return new Asignatura(asignaturaId, nombre);
                }
            }
        } catch (SQLException e) {
            throw new Exception("Error al leer la asignatura: " + e.getMessage());
        }
        return null;
    }

    @Override
    public void actualizarAsignatura(Asignatura asignatura) throws Exception {
        String sql = "UPDATE \"Ejercicio 4\".asignatura SET \"asignaturaNombre\" = ? WHERE id = ?";
        try (Connection conn = Conexion.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, asignatura.getNombre());
            stmt.setInt(2, asignatura.getId());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new Exception("Error al actualizar la asignatura: " + e.getMessage());
        }
    }
}
