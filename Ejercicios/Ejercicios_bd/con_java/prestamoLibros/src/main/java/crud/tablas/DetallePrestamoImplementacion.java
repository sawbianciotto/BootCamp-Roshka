package crud.tablas;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import conexion.bd.jdbc.Conexion;
import modelos.DetallePrestamo;

public class DetallePrestamoImplementacion implements DetallePrestamoInterfza {
    @Override
    public void crearDetallePrestamo(DetallePrestamo detallePrestamo) {
        String sql = "INSERT INTO \"Ejercicio 4\".\"detallePrestamo\" (\"idPrestamo\", \"idLibro\") VALUES (?, ?)";
        try (Connection conn = Conexion.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            stmt.setInt(1, detallePrestamo.getIdPrestamo());
            stmt.setInt(2, detallePrestamo.getIdLibro());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error al crear el detallePrestamo: " + e.getMessage());
        }
    }

    @Override
    public DetallePrestamo lDetallePrestamo(int id) {
        String sql = "SELECT id, \"idPrestamo\", \"idLibro\" FROM \"Ejercicio 4\".\"detallePrestamo\" WHERE id = ?";
        try (Connection conn = Conexion.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    int idDetalle = rs.getInt("id");
                    int idPrestamo = rs.getInt("idPrestamo");
                    int idLibro = rs.getInt("idLibro");
                    return new DetallePrestamo(idDetalle, idPrestamo, idLibro);
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error al leer el curso: " + e.getMessage());
        }
        return null;
    }

    @Override
    public void actualizarDetallePrestamo(DetallePrestamo detallePrestamo) {
        String sql = "UPDATE \"Ejercicio 4\".\"detallePrestamo\" SET \"idPrestamo\" = ?, \"idLibro\" = ? WHERE id = ?";
        try (Connection conn = Conexion.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, detallePrestamo.getIdPrestamo());
            stmt.setInt(2, detallePrestamo.getIdLibro());
            stmt.setInt(3, detallePrestamo.getId());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error al actualizar el detallePrestamo: " + e.getMessage());
        }
    }
    
}
