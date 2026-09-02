package com.mostecole.config;

import io.swagger.v3.oas.models.Components;
import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Contact;
import io.swagger.v3.oas.models.info.Info;
import io.swagger.v3.oas.models.security.SecurityRequirement;
import io.swagger.v3.oas.models.security.SecurityScheme;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class OpenApiConfig {

    @Bean
    public OpenAPI mostEcoleOpenAPI() {
        final String securitySchemeName = "bearerAuth";

        return new OpenAPI()
            .info(new Info()
                .title("MOST ÉCOLE API")
                .description("API REST de la plateforme d'enseignement en ligne MOST ÉCOLE " +
                             "– Secondaire belge (1ère à 6ème) + Concours médecine")
                .version("1.0.0")
                .contact(new Contact()
                    .name("MOST ÉCOLE")
                    .email("contact@mostecole.be")
                )
            )
            .addSecurityItem(new SecurityRequirement().addList(securitySchemeName))
            .components(new Components()
                .addSecuritySchemes(securitySchemeName, new SecurityScheme()
                    .name(securitySchemeName)
                    .type(SecurityScheme.Type.HTTP)
                    .scheme("bearer")
                    .bearerFormat("JWT")
                    .description("Entrez votre token JWT (sans le préfixe 'Bearer ')")
                )
            );
    }
}
