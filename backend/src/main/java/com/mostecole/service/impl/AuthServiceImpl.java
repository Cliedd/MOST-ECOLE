package com.mostecole.service.impl;

import com.mostecole.dto.request.LoginRequest;
import com.mostecole.dto.request.RegisterRequest;
import com.mostecole.dto.response.AuthResponse;
import com.mostecole.entity.User;
import com.mostecole.exception.EmailAlreadyExistsException;
import com.mostecole.repository.UserRepository;
import com.mostecole.security.JwtTokenProvider;
import com.mostecole.service.AuthService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Slf4j
public class AuthServiceImpl implements AuthService {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final JwtTokenProvider jwtTokenProvider;
    private final AuthenticationManager authenticationManager;

    @Override
    @Transactional
    public AuthResponse register(RegisterRequest request) {
        if (userRepository.existsByEmail(request.email())) {
            throw new EmailAlreadyExistsException(request.email());
        }

        User user = User.builder()
            .firstName(request.firstName())
            .lastName(request.lastName())
            .email(request.email())
            .passwordHash(passwordEncoder.encode(request.password()))
            .role(request.role())
            .enabled(true)
            .build();

        userRepository.save(user);
        log.info("Nouvel utilisateur créé : {} ({})", user.getEmail(), user.getRole());

        String token = jwtTokenProvider.generateTokenFromUsername(user.getEmail());
        return AuthResponse.of(token, user.getId(), user.getEmail(),
                               user.getRole(), user.getFirstName(), user.getLastName());
    }

    @Override
    public AuthResponse login(LoginRequest request) {
        Authentication authentication = authenticationManager.authenticate(
            new UsernamePasswordAuthenticationToken(request.email(), request.password())
        );

        String token = jwtTokenProvider.generateToken(authentication);
        User user = userRepository.findByEmail(request.email()).orElseThrow();

        log.info("Connexion réussie pour : {}", request.email());
        return AuthResponse.of(token, user.getId(), user.getEmail(),
                               user.getRole(), user.getFirstName(), user.getLastName());
    }
}
