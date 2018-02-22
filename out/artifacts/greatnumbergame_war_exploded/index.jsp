<%--
  Created by IntelliJ IDEA.
  User: jesse
  Date: 2/21/18
  Time: 7:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <h1>Welcome to the Great Number Game!</h1>
  <p>I am thinking of a number between 1 and 100 </p>
  <p>Take a guess!</p>

  <p><c:out value="${answer}"/></p>
  <p><c:out value="${number}"/></p>

  <form action="/" method="post">
    <input type="number" name="user_num" >
    <input type="submit" value="Submit">
  </form>

  </body>
</html>
