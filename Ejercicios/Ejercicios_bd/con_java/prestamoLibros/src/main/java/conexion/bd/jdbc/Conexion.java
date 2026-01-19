package conexion.bd.jdbc;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
    private static final String URL = "jdbc:postgresql://localhost:5432/Normalizacion";
    private static final String USER = "postgres";
    private static final String PASS = "postgres";

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASS);
    }
}
