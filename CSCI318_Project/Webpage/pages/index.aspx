<!DOCTYPE html>
<html lang="english">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <meta name="description" content="Links to popular esports tournaments">
    <meta name="keywords" content="esports, league of legends, csgo, smash">
    <meta name="author" content="Michael Brown">
    <title>Esports Tournaments | Welcome</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>

<body>
   <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #cccccc">
       <a class="navbar-brand" href="index.aspx"><span style="color: #00ffff">Esports</span> Tournaments</a>
       <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
           <span class="navbar-toggler-icon"></span>
       </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
           <ul class="navbar-nav ml-auto">
               <li class="nav-item">
                <a class="nav-link" href="index.aspx">Home</a>
               </li>
			   	<li class="nav-item">
				<a class="nav-link" href="about.aspx">About</a>
				</li>
               	<li class="nav-item">
				<a class="nav-link" href="SignUp.aspx">Sign Up</a>
				</li>
               	<li class="nav-item">
				<a class="nav-link" href="SignIn.aspx">Sign In</a>
				</li>
                <li class="nav-item">
				<a class="nav-link" href="Admin_Login.aspx">Admin</a>
				</li>
           </ul>
       </div>
   </nav>

    <div class="jumbotron container-fluid">
        <h1 class="display-4 text-center">Welcome to our Esport website</h1>
        <p class="lead text-center">This website will be displaying past tournaments on a couple of popular Esports games</p>
        <hr class="my-3">
        <p class="lead text-center">These games include - League of Legends, CSGO, DOTA 2, Overwatch and Player Unknown Battlegrounds</p>
        <p class="lead text-center">We were able to get this information by using the Panda Score API!</p>
    </div>

    <article> <!--Going to click image and then get directed to web page of game -->
        <div class="container text-center">
            <a href="League of Legends.aspx"><img src="./img/lol.jpg" alt="" class="img-thumbnail rounded mx-auto d-block center rounded"></a>
            <a href="csgo.aspx"><img src="./img/csgo.jpg" alt="" class="img-thumbnail rounded mx-auto d-block rounded"></a>
            <a href="dota2.aspx"><img src="./img/dota2.jpg" alt="" class="img-thumbnail rounded mx-auto d-block rounded"></a>
            <a href="overwatch.aspx"><img src="./img/overwatch.jpg" alt="" class="img-thumbnail rounded mx-auto d-block rounded outside"></a>
            <a href="pubg.aspx"><img src="./img/pubg.jpg" alt="" class="img-thumbnail rounded mx-auto d-block rounded outside"></a>
        </div>
    </article>

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>