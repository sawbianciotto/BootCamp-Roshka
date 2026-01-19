package crud.tablas;
import modelos.Editorial;
import conexion.bd.jdbc.Conexion;
import java.sql.*;

public class EditorialImplementacion implements EditorialInterfaz {
    @Override
    public void crearEditorial(Editorial editorial) throws Exception {
        String sql = "INSERT INTO \"Ejercicio 4\".editorial (\"editorialNombre\") VALUES (?)";
        try (Connection conn = Conexion.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            stmt.setString(1, editorial.getNombre());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new Exception("Error al crear la editorial: " + e.getMessage());
        }
    }

    @Override
    public Editorial leerEditorial(int id) throws Exception {
        String sql = "SELECT id, \"editorialNombre\" FROM \"Ejercicio 4\".editorial WHERE id = ?";
        try (Connection conn = Conexion.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    int editorialId = rs.getInt("id");
                    String nombre = rs.getString("editorialNombre");
                    return new Editorial(editorialId, nombre);
                }
            }
        } catch (SQLException e) {
            throw new Exception("Error al leer la editorial: " + e.getMessage());
        }
        return null;
    }

    @Override
    public void actualizarEditorial(Editorial editorial) throws Exception {
        String sql = "UPDATE \"Ejercicio 4\".editorial SET \"editorialNombre\" = ? WHERE id = ?";
        try (Connection conn = Conexion.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, editorial.getNombre());
            stmt.setInt(2, editorial.getId());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new Exception("Error al actualizar la editorial: " + e.getMessage());
        }
    }
}
