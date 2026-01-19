package crud.tablas;
import modelos.Curso;
import conexion.bd.jdbc.Conexion;
import java.sql.*;

public class CursoImplementacion implements CursoInterfaz {
    @Override
    public void crearCurso(Curso curso) throws Exception {
        String sql = "INSERT INTO \"Ejercicio 4\".curso (\"nombreCurso\") VALUES (?)";
        try (Connection conn = Conexion.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            stmt.setString(1, curso.getNombre());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new Exception("Error al crear el curso: " + e.getMessage());
        }
    }

    @Override
    public Curso leerCurso(int id) throws Exception {
        String sql = "SELECT id, \"nombreCurso\" FROM \"Ejercicio 4\".curso WHERE id = ?";
        try (Connection conn = Conexion.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    int cursoId = rs.getInt("id");
                    String nombre = rs.getString("nombreCurso");
                    return new Curso(cursoId, nombre);
                }
            }
        } catch (SQLException e) {
            throw new Exception("Error al leer el curso: " + e.getMessage());
        }
        return null;
    }

    @Override
    public void actualizarCurso(Curso curso) throws Exception {
        String sql = "UPDATE \"Ejercicio 4\".curso SET \"nombreCurso\" = ? WHERE id = ?";
        try (Connection conn = Conexion.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, curso.getNombre());
            stmt.setInt(2, curso.getId());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new Exception("Error al actualizar el curso: " + e.getMessage());
        }
    }
}
