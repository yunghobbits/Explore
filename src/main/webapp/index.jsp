<html>
  <body>
<head>
  <title>Van Life App</title>

 <style>
  body {
  background-color: black;
  font-family: Monospace;
  color: pink;
  width: 100%;
  height: 100%;
 }

 h1 {
   font-family:'Leckerli One', cursive;
   font-size: 35px;
   color: #ff3855;
   text-align: center;
   }
 h2 {
 	font-family: 'Leckerli One', cursive;
 	font-size: 38px;
   text-align: center;
 }

 h3 {
 	text-transform: uppercase;
 	font-family: 'Noticia Text';
 	color: #ff3855;
 	font-weight: bold;
 	letter-spacing: 1px;
 	font-size: 25px;
   text-align: center;
 }

 p {
     font-size: 17px;
     font-family: Monospace;
   }

 .thick-pink-border {
     border-color: pink;
     border-width: 7px;
     border-style: solid;
     border-radius: 5%;
     display: block;
     margin-left: auto;
     margin-right: auto;
     width: 50%;

   }

 .center {
     display: block;
     margin-left: auto;
     margin-right: auto;
     width: 50%;
 }
 #email {
 	color: #000;
 	font-size: 100%;
 	background-color: #fefefb;
 	border: solid #c4bfab 2px;
 	width: 200px;
 	padding: 15px;
 	border-radius: 5px 0 0 5px;
   text-align: center;
 }

 #signupform {
 	margin: 20px auto 0 auto;
 	text-align: center;
 }
 #button {
 	text-transform: uppercase;
 	text-align: center;
 	font-size: 100%;
 	font-weight: bold;
 	color: #fff0dc;
 	background: #ff3855;
 	border: none;
 	border-radius: 0 5px 5px 0;
 	padding: 17px 50px;
 	margin-left: -5px;
 }
 footer {
 	background: #ff3855;
 	width: 100%;
 	padding: 10px;
 	text-align: center;
 	font-size: 1;
 }
 #info {
 	background: #333333;
 	width: 100%;
 	overflow: auto;
 }
</style>



<img src="" alt="logo" id="logo" />
</head>
<h1>Welcome</h1>
<img class="thick-pink-border" alt="A van life drawing."src="VanLife.jpg">

<h3 class= center>Click here to <a href="/list">E X P L O R E</a> or sign in below.</h3>

       <section>
         <div class="email-signup">
        <h2>Sign in!</h2>
            <form id="signupform" action="/FirstServlet" method="post">
        UserName:<input type="text" name="username"/><br/><br/>
        Password:<input type="password" name="userpass"/><br/><br/>
        <input type="submit" value="login"/>
        </form>
        </div>
        </section>


   <section>
   		<div id="info" class="email-signup">
   					      <h2>Sign up with us!</h2>
   					      <h3>Be apart of the adventures!</h3>
   		<form id="signupform" method="post" action="register">
           UserName:<input type="text" name="name" /><br/><br/>
           Email ID:<input type="text" name="email" /><br/><br/>
           Password:<input type="text" name="pass" /><br/><br/>
           <input type="submit" value="register" /><br/><br/>
       </form>
   	  </div>
    		</section>




    <footer>
      2018 YungHobbits. All Rights Reserved. Made in STL.
		</footer>
  </body>
</html>
