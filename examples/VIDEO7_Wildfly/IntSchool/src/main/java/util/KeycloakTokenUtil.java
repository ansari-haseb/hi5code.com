package util;

import org.keycloak.KeycloakPrincipal;
import org.keycloak.representations.AccessToken;

import javax.servlet.http.HttpServletRequest;

public class KeycloakTokenUtil {

    public static String getPreferredUsername(HttpServletRequest httpServletRequest){
        KeycloakPrincipal<?> keycloakPrincipal = (KeycloakPrincipal<?>) httpServletRequest.getUserPrincipal();
        AccessToken accessToken = keycloakPrincipal.getKeycloakSecurityContext().getToken();
        return accessToken.getPreferredUsername();

    }
}
