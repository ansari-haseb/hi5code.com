import Vue from 'vue'
import App from './App.vue'
import Keycloak from 'keycloak-js'

Vue.config.productionTip = false;

let initOptions = {
  url : 'http://localhost:8080/auth',
  realm : 'hi5code',
  clientId : 'hi5code-vue',
  onLoad  : 'login-required'
}

let keycloak = Keycloak(initOptions);

keycloak.init({onLoad: initOptions.onLoad}).then( auth => {
  if (!auth) {
    window.location.reload();
  } else {

    new Vue({
      render: h => h(App, { props : {keycloak: keycloak}}),
    }).$mount('#app')
  }
}).catch(() => {
  alert("Login Failure")
});

Vue.prototype.$keycloak = keycloak