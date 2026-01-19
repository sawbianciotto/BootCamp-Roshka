package crud.tablas;
import modelos.Prestamo;
import conexion.bd.jdbc.Conexion;
import java.sql.*;

public class PrestamoImplementacion implements PrestamoInterfaz {
    @Override
    public void crearPrestamo(Prestamo prestamo) throws Exception {
        String sql = "INSERT INTO \"Ejercicio 4\".prestamo (\"idProfesor\", \"fechaPrestamo\", \"idCurso\", \"idAula\", \"idAsignatura\") VALUES (?, ?, ?, ?, ?)";
        try (Connection conn = Conexion.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            stmt.setInt(1, prestamo.getIdProfesor());
            stmt.setDate(2, java.sql.Date.valueOf(prestamo.getFechaPrestamo()));
            stmt.setInt(3, prestamo.getIdCurso());
            stmt.setInt(4, prestamo.getIdAula());
            stmt.setInt(5, prestamo.getIdAsignatura());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new Exception("Error al crear el prestamo: " + e.getMessage());
        }
    }

    @Override
    public Prestamo leerPrestamo(int id) throws Exception {
        String sql = "SELECT id, \"idProfesor\", \"fechaPrestamo\", \"idCurso\", \"idAula\", \"idAsignatura\" FROM \"Ejercicio 4\".prestamo WHERE id = ?";
        try (Connection conn = Conexion.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    int prestamoId = rs.getInt("id");
                    int idProfesor = rs.getInt("idProfesor");
                    String fechaPrestamo = rs.getString("fechaPrestamo");
                    int idCurso = rs.getInt("idCurso");
                    int idAula = rs.getInt("idAula");
                    int idAsignatura = rs.getInt("idAsignatura");
                    return new Prestamo(prestamoId, idProfesor, fechaPrestamo, idCurso, idAula, idAsignatura);
                }
            }
        } catch (SQLException e) {
            throw new Exception("Error al leer el prestamo: " + e.getMessage());
        }
        return null;
    }

    @Override
    public void actualizarPrestamo(Prestamo prestamo) throws Exception {
        String sql = "UPDATE \"Ejercicio 4\".prestamo SET \"idProfesor\" = ?, \"fechaPrestamo\" = ?, \"idCurso\" = ?, \"idAula\" = ?, \"idAsignatura\" = ? WHERE id = ?";
        try (Connection conn = Conexion.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, prestamo.getIdProfesor());
            stmt.setDate(2, java.sql.Date.valueOf(prestamo.getFechaPrestamo()));
            stmt.setInt(3, prestamo.getIdCurso());
            stmt.setInt(4, prestamo.getIdAula());
            stmt.setInt(5, prestamo.getIdAsignatura());
            stmt.setInt(6, prestamo.getId());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new Exception("Error al actualizar el prestamo: " + e.getMessage());
        }
    }
}
