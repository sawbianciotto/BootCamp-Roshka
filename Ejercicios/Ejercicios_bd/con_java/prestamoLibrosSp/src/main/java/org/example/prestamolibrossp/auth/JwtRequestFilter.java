package org.example.prestamolibrossp.auth;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.prestamolibrossp.usuario.UsuarioDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;

@Component
public class JwtRequestFilter extends OncePerRequestFilter {

    @Autowired
    private JwtUtil jwtUtil;

    @Autowired
    private UsuarioDetailsService userDetailsService;

    // Este método se ejecuta en cada request HTTP
    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain chain)
            throws ServletException, IOException {
        
        if (request.getServletPath().equals("/auth/login")) {
            chain.doFilter(request, response);
            return;
        }
        // Obtiene el header Authorization de la request
        final String authHeader = request.getHeader("Authorization");
        String username = null;
        String jwt = null;

        // Si el header existe y empieza con "Bearer ", extrae el token y el username
        if (authHeader != null && authHeader.startsWith("Bearer ")) {
            jwt = authHeader.substring(7);
            username = jwtUtil.extractUsername(jwt); 
        }

        // Si hay username y nadie está autenticado aún
        if (username != null && SecurityContextHolder.getContext().getAuthentication() == null) {
            // Busca los datos del usuario en la base de datos
            UserDetails userDetails = userDetailsService.loadUserByUsername(username);
            // Valida el token (firma, expiración, etc.)
            if (jwtUtil.validateToken(jwt, userDetails)) { 
                // Crea un objeto de autenticación y lo pone en el contexto de Spring Security
                UsernamePasswordAuthenticationToken authToken =
                        new UsernamePasswordAuthenticationToken(userDetails, null, userDetails.getAuthorities());
                authToken.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
                SecurityContextHolder.getContext().setAuthentication(authToken);//security es un contenedor que tiene autenticacion, roles,usuario para la request actual
            }
        }
        // Deja que la request siga su curso normal
        chain.doFilter(request, response);
    }
}
