package crud.tablas;
import modelos.Libro;
import conexion.bd.jdbc.Conexion;
import java.sql.*;

public class LibroImplementacion implements LibroInterfaz {
    @Override
    public void crearLibro(Libro libro) throws Exception {
        String sql = "INSERT INTO \"Ejercicio 4\".libro (\"libroNombre\", \"idEditorial\") VALUES (?, ?)";
        try (Connection conn = Conexion.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            stmt.setString(1, libro.getNombre());
            stmt.setInt(2, libro.getIdEditorial());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new Exception("Error al crear el libro: " + e.getMessage());
        }
    }

    @Override
    public Libro leerLibro(int id) throws Exception {
        String sql = "SELECT id, \"libroNombre\", \"idEditorial\" FROM \"Ejercicio 4\".libro WHERE id = ?";
        try (Connection conn = Conexion.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    int libroId = rs.getInt("id");
                    String libroNombre = rs.getString("libroNombre");
                    int idEditorial = rs.getInt("idEditorial");
                    return new Libro(libroId, libroNombre, idEditorial);
                }
            }
        } catch (SQLException e) {
            throw new Exception("Error al leer el libro: " + e.getMessage());
        }
        return null;
    }

    @Override
    public void actualizarLibro(Libro libro) throws Exception {
        String sql = "UPDATE \"Ejercicio 4\".libro SET \"libroNombre\" = ?, \"idEditorial\" = ? WHERE id = ?";
        try (Connection conn = Conexion.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, libro.getNombre());
            stmt.setInt(2, libro.getIdEditorial());
            stmt.setInt(3, libro.getId());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new Exception("Error al actualizar el libro: " + e.getMessage());
        }
    }
}
