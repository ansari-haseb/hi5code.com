<template>
    <div id="home-div">
        <div id="content" style="width:60%; margin:0 auto;">
            <p style="color: darkgray;margin: 90px 50px 25px 50px;">
                My name is <strong style="color:deepskyblue">HASEB ANSARI</strong> and I'm an expert in using Keycloak at professional level. I'm currently working as a full-time employee in a well established firm in Germany and by profession I'm a Java Developer, DevOps( Docker, Kubernetes, CI/CD Jenkins, Git) and AWS Associate Solutions Architect.
            </p>
            <p style="color: darkgray;margin: 0px 50px 25px 50px;">
                Altogether, I've 4-4.5 years of experience with Keycloak. The contents of this channel is meant for educational purpose only. For further queries, please contact me.
            </p>
            <p style="color: darkgray;margin: 0px 50px 25px 50px;">
                The motive behind the creation of this channel is to spread the word about Keycloak an Open Source technology and it's usage to enable security(authentication and authorization) aspects to the applications. It will also revolve around technologies used by Keycloak like LDAP, ReCaptcha, OTP, etc. The videos will come in part numbers and well structured in order to cover all the audience from basic level to professional level (Zero2Hero)
            </p>
            <p style="color: darkgray;margin: 0px 50px 25px 50px;">
                Thanks :)
                If you like it, spread the word by Subscribe, Like and Share (SLS)
            </p>
            <p style="color: darkgray;margin: 0px 50px 25px 50px;">
                If you like it, spread the word by Subscribe, Like and Share (SLS)
            </p>
        </div>
        <div id="table-attr">
            <table align="center">
                <tr>
                    <th style="text-align:center;">Attributes</th>
                    <th style="text-align:center;">Value</th>
                </tr>
                <tr>
                    <td style="text-align:center;">Username</td>
                    <td id="row-username" style="text-align:center;">{{keycloaks.idTokenParsed.preferred_username}}</td>
                </tr>
                <tr>
                    <td style="text-align:center;">First Name</td>
                    <td id="row-firstName" style="text-align:center;">{{keycloaks.idTokenParsed.given_name}}</td>
                </tr>
                <tr>
                    <td style="text-align:center;">Last Name</td>
                    <td id="row-lastName" style="text-align:center;">{{keycloaks.idTokenParsed.family_name}}</td>
                </tr>
                <tr>
                    <td style="text-align:center;">Name</td>
                    <td id="row-name" style="text-align:center;">{{keycloaks.idTokenParsed.name}}</td>
                </tr>
                <tr>
                    <td style="text-align:center;">Email</td>
                    <td id="row-email" style="text-align:center;">{{keycloaks.idTokenParsed.email}}</td>
                </tr>
            </table>
        </div>
        <div d="content" style="width:20%; margin:100px auto;">
            <div>
                <textarea id="ta-token" v-model="keycloaks.token"></textarea>
                <textarea id="ta-refreshToken" v-model="keycloaks.refreshToken"></textarea>
            </div>
            
            <input type="button" value="Update Token" @click="refreshToken(keycloaks)" />

            <input type="button" value="LOGOUT" @click="logout" />
        </div> 
    </div>
</template>

<script>
    export default {
        name: 'Home',
        props: ['keycloaks'],
        methods: {
            logout: function() {
                this.$keycloak.logout({"redirectUri":"http://localhost:3000/logout.html"})
            },
            refreshToken: function(keycloak) {
                keycloak.updateToken(-1)
                .then(function(){
                    document.getElementById('ta-token').value = keycloak.token;
                    document.getElementById('ta-refreshToken').value = keycloak.refreshToken;
                });
            }
        }
    }
</script>

<style>
    table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 500px;
    }
    td, th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
    }
    tr:nth-child(even) {
        background-color: #94ab9e;
        color:black;
    }
    tr:nth-child(odd) {
        color:whitesmoke;
    }
</style>