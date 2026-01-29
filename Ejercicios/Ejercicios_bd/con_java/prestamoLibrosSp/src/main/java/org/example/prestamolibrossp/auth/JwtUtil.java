package org.example.prestamolibrossp.auth;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.security.core.userdetails.UserDetails;
import java.util.Date;

@Component
public class JwtUtil {
    @Value("${jwt.key}")
    private String SECRET_KEY;

    @Value("${jwt.expiration}")
    private long tiempoExpiracion;

    // Genera un token JWT para el usuario dado
    public String generateToken(String username) {
        return Jwts.builder()
            .setSubject(username) // El usuario al que pertenece el token
            .setIssuedAt(new Date()) // Fecha de creación
            .setExpiration(new Date(System.currentTimeMillis() + tiempoExpiracion * 1000)) // Fecha de expiración
            .signWith(SignatureAlgorithm.HS256, SECRET_KEY) // Firma con algoritmo y clave
            .compact(); // Devuelve el token JWT como String
    }

    // Extrae el username del token JWT
public String extractUsername(String jwt){
    return Jwts.parser() // Crea un parser para leer y validar el JWT.
            .setSigningKey(SECRET_KEY) // Le indica al parser la clave secreta para validar la firma del token.
            .parseClaimsJws(jwt) // Parsea (lee y valida) el token JWT recibido.
            .getBody() // Obtiene el cuerpo (claims) del token, donde están los datos.
            .getSubject(); // Extrae el "subject" (el username) del token.
}

    // Valida el token JWT: verifica que el username coincida y que no esté expirado
    public boolean validateToken(String jwt, UserDetails detallesUsuarios){
        final String username = extractUsername(jwt);
        return (username.equals(detallesUsuarios.getUsername()) && !isTokenExpired(jwt));
    }

    // Verifica si el token está expirado
    private boolean isTokenExpired(String jwt) {
        Date expiration = Jwts.parser()
                .setSigningKey(SECRET_KEY)
                .parseClaimsJws(jwt)
                .getBody()
                .getExpiration();
        return expiration.before(new Date());
    }
}
