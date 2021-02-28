package com.hi5code.example.utils;

import com.hi5code.example.models.User;
import org.keycloak.KeycloakPrincipal;
import org.keycloak.representations.AccessToken;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

@Service
public class KeycloakTokenUtil {

    public User getUserDetails(HttpServletRequest request){
        KeycloakPrincipal<?> keycloakPrincipal = (KeycloakPrincipal<?>) request.getUserPrincipal();
        AccessToken accessToken = keycloakPrincipal.getKeycloakSecurityContext().getToken();
        User keycloakUser = new User(accessToken.getPreferredUsername());
        if (!ObjectUtils.isEmpty(accessToken.getEmail())) keycloakUser.setEmail(accessToken.getEmail());
        if (!ObjectUtils.isEmpty(accessToken.getName())) keycloakUser.setFullName(accessToken.getName());
        else keycloakUser.setFullName(accessToken.getPreferredUsername());
        if (!ObjectUtils.isEmpty(accessToken.getResourceAccess())) {
            Set<String> roles = new HashSet<>();
            Map<String, AccessToken.Access> resourceAccess = accessToken.getResourceAccess();
            for (Map.Entry<String,AccessToken.Access> entry : resourceAccess.entrySet()) {
                if (!entry.getKey().contains("spring-app")) continue;
                AccessToken.Access resourceRoles = entry.getValue();
                resourceRoles.getRoles().stream().iterator().forEachRemaining(roles::add);
            }
            keycloakUser.setRoles(roles);
        }
        return keycloakUser;
    }

}
