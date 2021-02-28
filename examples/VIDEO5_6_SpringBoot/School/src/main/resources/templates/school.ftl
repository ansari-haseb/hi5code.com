<html>
    <head>
        <link rel="stylesheet" href="assets/css/styles.css">
        <script src="assets/js/myLogic.js"></script>
        <title>hi5code.com</title>
    </head>
    <body>
        <div id="header">
            <img id="logo" style="height: 150px; width: 150px; border-radius: 100%; padding: 15px 15px 15px 15px" src="assets/img/hi5code_logo_medium.png" alt="hi5code.com">
            <h1 id="headerLabel" align="center">My hi5code School</h1>
        </div>
        <div id="menu">
            <ul id="menubar">
              <li><a class="info active" href="/hi5code/">Home</a></li>
              <li><a class="info" href="/hi5code/private/user/classrooms">Classrooms</a></li>
              <li><a class="info" href="/hi5code/private/user/staffrooms">Staffrooms</a></li>
              <li><a class="info" href="/hi5code/private/user/office">Office</a></li>
              <li><a class="info" href="/hi5code/private/user/library">Library</a></li>
              <li><a class="info" href="/hi5code/private/user/sports">Sports</a></li>
              <li><a class="info" href="/hi5code/private/user/principal">Principal</a></li>
              <li style="background-color: red;"><a class="info" href="/hi5code/private/user/welcome">Login</a></li>
            </ul>
        </div>
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

        <script>
            var lists = document.getElementById("menubar");
            var link = lists.getElementsByClassName("info");
            for (var i = 0; i < link.length; i++) {
              link[i].addEventListener("click", function() {
              var current = document.getElementsByClassName("active");
              current[0].className = current[0].className.replace(" active", "");
              this.className += " active";
              });
            }
        </script>

    </body>
</html>