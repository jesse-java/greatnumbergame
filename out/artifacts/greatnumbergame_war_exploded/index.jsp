<%--
  Created by IntelliJ IDEA.
  User: jesse
  Date: 2/21/18
  Time: 7:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <h1>Welcome to the Great Number Game!</h1>
  <p>I am thinking of a number between 1 and 100 </p>
  <p>Take a guess!</p>

  <c:if test="${requestScope.number < requestScope.answer}">
    <p>Too Low!</p>
  </c:if>
  <c:if test="${requestScope.number > requestScope.answer}">
    <p>Too High!</p>
  </c:if>
  <c:if test="${requestScope.number == requestScope.answer && requestScope.answer != null}">
    <p><c:out value="${answer} was the number!"/></p>
    <a href="<c:url value="/?action=play-again"/>">Play Again!</a>
    <a href=""></a>
  </c:if>
  <p>Answer: <c:out value="${answer}"/></p>
  <p>Your Guess: <c:out value="${number}"/></p>

  <form action="/" method="post">
    <input type="number" name="user_num" >
    <input type="submit" value="Submit">
  </form>

  </body>
</html>
