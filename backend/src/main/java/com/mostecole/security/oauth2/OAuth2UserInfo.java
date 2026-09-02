package com.mostecole.security.oauth2;

import java.util.Map;

/**
 * Extracts standardised user fields from Google's OAuth2 attribute map.
 */
public class OAuth2UserInfo {

    private final Map<String, Object> attributes;

    public OAuth2UserInfo(Map<String, Object> attributes) {
        this.attributes = attributes;
    }

    public String getId()        { return (String) attributes.get("sub"); }
    public String getEmail()     { return (String) attributes.get("email"); }
    public String getFirstName() {
        String given = (String) attributes.get("given_name");
        return given != null ? given : getFullName().split(" ")[0];
    }
    public String getLastName() {
        String family = (String) attributes.get("family_name");
        if (family != null) return family;
        String[] parts = getFullName().split(" ", 2);
        return parts.length > 1 ? parts[1] : "";
    }
    public String getFullName()  {
        String name = (String) attributes.get("name");
        return name != null ? name : "Utilisateur Google";
    }
    public String getPicture()   { return (String) attributes.get("picture"); }
}
