package com.mostecole.security.oauth2;

import com.mostecole.entity.Role;
import com.mostecole.entity.User;
import com.mostecole.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.DefaultOAuth2User;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.security.oauth2.core.user.OAuth2UserAuthority;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class CustomOAuth2UserService extends DefaultOAuth2UserService {

    private final UserRepository userRepository;

    @Override
    public OAuth2User loadUser(OAuth2UserRequest request) throws OAuth2AuthenticationException {
        OAuth2User oAuth2User = super.loadUser(request);
        OAuth2UserInfo info   = new OAuth2UserInfo(oAuth2User.getAttributes());

        User user = userRepository.findByEmail(info.getEmail()).orElseGet(() -> {
            User newUser = User.builder()
                    .email(info.getEmail())
                    .firstName(info.getFirstName())
                    .lastName(info.getLastName())
                    .passwordHash("")          // no password for OAuth users
                    .role(Role.ROLE_STUDENT)   // default role; admin can change later
                    .enabled(true)
                    .build();
            return userRepository.save(newUser);
        });

        // Update name if changed in Google profile
        if (!user.getFirstName().equals(info.getFirstName()) ||
                !user.getLastName().equals(info.getLastName())) {
            user.setFirstName(info.getFirstName());
            user.setLastName(info.getLastName());
            userRepository.save(user);
        }

        Map<String, Object> attrs = Map.of(
                "sub",         info.getId()        != null ? info.getId()        : "",
                "email",       user.getEmail(),
                "given_name",  user.getFirstName(),
                "family_name", user.getLastName(),
                "role",        user.getRole().name()
        );

        return new DefaultOAuth2User(
                List.of(new OAuth2UserAuthority("ROLE_" + user.getRole().name().replace("ROLE_", ""), attrs)),
                attrs,
                "email"
        );
    }
}
