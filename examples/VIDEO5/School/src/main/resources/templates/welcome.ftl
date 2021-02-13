<html>
    <head>
        <link rel="stylesheet" href="http://localhost:8090/hi5code/assets/css/styles.css">
        <script src="http://localhost:8090/hi5code/assets/js/myLogic.js"></script>
        <title>Welcome User</title>
    </head>
    <body>
        <div id="header">
            <img id="logo" style="height: 150px; width: 150px; border-radius: 100%; padding: 15px 15px 15px 15px" src="http://localhost:8090/hi5code/assets/img/hi5code_logo_medium.png" alt="hi5code.com">
            <h1 id="headerLabel" align="center">My hi5code School</h1>
        </div>
        <div id="menu">
            <ul id="menubar">
              <li><a class="info active" href="#home">Home</a></li>
              <li><a class="info" href="#classrooms">Classrooms</a></li>
              <li><a class="info" href="#staffrooms">Staffrooms</a></li>
              <li><a class="info" href="#office">Office</a></li>
              <li><a class="info" href="#library">Library</a></li>
              <li><a class="info" href="#sports">Sports</a></li>
              <li><a class="info" href="#principal">Principal</a></li>
              <li style="background-color: red;"><a class="info" href="/private/user/welcome">Logout</a></li>
            </ul>
        </div>
        <div id="content" style="width:60%; margin:0 auto;">
            <h1>WELCOME USER SO n SO .....</h1>
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