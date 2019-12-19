<!DOCTYPE html>
<html lang="">
<head>
    <title>Counter Strike</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <meta charset="utf-8"/>
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
</nav>

<table class="table table-bordered table-striped">
    <thead>
    <tr>
        <th>Name</th>
        <th>ID</th>
        <th>Begin Date</th>
        <th>End Date</th>
    </tr>
    </thead>

    <tbody id="tableData"></tbody>
</table>

<script type="text/javascript" src="../js/APIFetchCSGO.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>