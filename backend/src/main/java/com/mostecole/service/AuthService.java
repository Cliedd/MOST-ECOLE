package com.mostecole.service;

import com.mostecole.dto.request.LoginRequest;
import com.mostecole.dto.request.RegisterRequest;
import com.mostecole.dto.response.AuthResponse;

public interface AuthService {
    AuthResponse login(LoginRequest request);
    AuthResponse register(RegisterRequest request);
}
