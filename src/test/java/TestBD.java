package test.java;

import org.junit.Test;
import static org.junit.Assert.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class TestBD {

    @Test
    public void testConexion() {
        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clinica", "root", "123456");
            assertNotNull(con);
        } catch (SQLException e) {
            fail("Error de conexión: " + e.getMessage());
        }
    }
}

