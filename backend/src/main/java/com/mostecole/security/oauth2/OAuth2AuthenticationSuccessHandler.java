package com.mostecole.security.oauth2;

import com.mostecole.entity.User;
import com.mostecole.repository.UserRepository;
import com.mostecole.security.JwtTokenProvider;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;
import org.springframework.web.util.UriComponentsBuilder;

import java.io.IOException;

@Component
@RequiredArgsConstructor
public class OAuth2AuthenticationSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {

    private final JwtTokenProvider  jwtTokenProvider;
    private final UserRepository    userRepository;

    @Value("${app.oauth2.redirect-uri}")
    private String redirectUri;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request,
                                        HttpServletResponse response,
                                        Authentication authentication) throws IOException {

        OAuth2User oAuth2User = (OAuth2User) authentication.getPrincipal();
        String email = (String) oAuth2User.getAttributes().get("email");

        User user = userRepository.findByEmail(email)
                .orElseThrow(() -> new IllegalStateException("User not found after OAuth2 login: " + email));

        String token = jwtTokenProvider.generateTokenFromUsername(email);

        String targetUrl = UriComponentsBuilder.fromUriString(redirectUri)
                .queryParam("token",     token)
                .queryParam("userId",    user.getId().toString())
                .queryParam("email",     user.getEmail())
                .queryParam("role",      user.getRole().name())
                .queryParam("firstName", user.getFirstName())
                .queryParam("lastName",  user.getLastName())
                .build().toUriString();

        getRedirectStrategy().sendRedirect(request, response, targetUrl);
    }
}
