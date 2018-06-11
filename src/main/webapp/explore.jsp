<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<style>
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

 body {
 background-color: black;
 font-family: Monospace;
 color: pink;
 width: 100%;
 height: 100%;
}

footer {
	background: #ff3855;
	width: 100%;
	padding: 10px;
	text-align: center;
	font-size: 1;
}
p {
    font-size: 17px;
    font-family: Monospace;
  text-align: center;
  }
  .center {
      display: block;
      margin-left: auto;
      margin-right: auto;
    text-align: center;

  }
</style>
<body>

<h1> E X P L O R E * L I F E</h1>
<h2>There is so much to E X P L O R E </h2>
<p>Which state are you traveling to?</p>


<section>
    <div class= center>
<form action="list" method="post">
        Select a State:&nbsp;

        <select name="states">
            <c:forEach items="${statesList}" var="states">
                <option value="${states.name}"> ${states.name} </option>
            </c:forEach>
        </select>

        <br/><br/>
        <input type="submit" value="Submit" />
    </form>
    </div>
  </section>


  <pre> </pre>
    <pre></pre>
  <p> <a href="index.jsp">H O M E</a> <a href="profile.jsp">P R O F I L E</a>
  </p>
 <footer>
      2018 YungHobbits. All Rights Reserved. Made in STL.
		</footer>
</body>
</html>