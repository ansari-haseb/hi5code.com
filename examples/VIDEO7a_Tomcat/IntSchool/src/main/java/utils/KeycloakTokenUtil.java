package utils;

import javax.servlet.http.HttpServletRequest;

import org.keycloak.KeycloakPrincipal;
import org.keycloak.representations.AccessToken;

public class KeycloakTokenUtil {

    public static String getPreferredUsername(HttpServletRequest httpServletRequest){
        KeycloakPrincipal<?> keycloakPrincipal = (KeycloakPrincipal<?>) httpServletRequest.getUserPrincipal();
        AccessToken accessToken = keycloakPrincipal.getKeycloakSecurityContext().getToken();
        return accessToken.getPreferredUsername();

    }
}