<template>
  <div id="app">
    <div id="header">
        <img id="logo" style="height: 150px; width: 150px; border-radius: 100%; padding: 15px 15px 15px 15px" src="./assets/hi5code_logo_medium.png" alt="hi5code.com">
        <h1 id="headerLabel" align="center">My hi5code School</h1>
    </div>
    <Home :keycloaks=keycloak />
  </div>
</template>

<script>
  import Home from './components/Home'
  import Keycloak from 'keycloak-js'

  export default {
    name: 'App',
    props: {
      keycloak: Keycloak
    },
    components: {
      Home
    }
  }
</script>

<style>
  
  #header {
      width: 100%;
      display: flex;
  }
  #headerLabel {
      width: 100%;
      margin-top: 70px;
      color: orangered;
      font-family: monospace;
      font-size: xxx-large;
  }
  html {
      background-color: black;
  }
</style>
