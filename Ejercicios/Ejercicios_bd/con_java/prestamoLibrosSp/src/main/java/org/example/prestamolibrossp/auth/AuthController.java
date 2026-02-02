package org.example.prestamolibrossp.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController 
@RequestMapping("/auth") 
public class AuthController {

    @Autowired
    private AuthService authService;

    @PostMapping("/login")
    public LoginResponseDTO login(@RequestBody LoginRequestDTO loginRequest) {
        String token = authService.authenticateAndGenerateToken(
                loginRequest.getUsername(),
                loginRequest.getPassword()
        );
        return new LoginResponseDTO(token);
    }
}
