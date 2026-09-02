package com.mostecole.dto.request;

import com.mostecole.entity.Role;
import jakarta.validation.constraints.*;

public record RegisterRequest(
    @NotBlank(message = "Le prénom est obligatoire")
    @Size(min = 2, max = 100)
    String firstName,

    @NotBlank(message = "Le nom est obligatoire")
    @Size(min = 2, max = 100)
    String lastName,

    @NotBlank(message = "L'email est obligatoire")
    @Email(message = "Format d'email invalide")
    String email,

    @NotBlank(message = "Le mot de passe est obligatoire")
    @Size(min = 8, message = "Le mot de passe doit comporter au moins 8 caractères")
    String password,

    @NotNull(message = "Le rôle est obligatoire")
    Role role
) {}
