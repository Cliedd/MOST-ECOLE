package com.mostecole.dto.response;

import com.mostecole.entity.Role;
import java.util.UUID;

public record AuthResponse(
    String accessToken,
    String tokenType,
    UUID userId,
    String email,
    Role role,
    String firstName,
    String lastName
) {
    public static AuthResponse of(String token, UUID userId, String email,
                                   Role role, String firstName, String lastName) {
        return new AuthResponse(token, "Bearer", userId, email, role, firstName, lastName);
    }
}
