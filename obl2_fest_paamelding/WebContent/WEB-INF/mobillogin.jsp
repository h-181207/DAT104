<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logg inn</title>
</head>
<body>
<h2>Logg inn</h2>
<p>Det er kun registrerte deltagere som f�r se deltagerlisten.
Logg inn ved � gi mobil-nummeret ditt.</p>
<form action="login" method="post">
  <fieldset>
    <legend>Logg inn</legend>
    <p>Mobil: <input type="password" name="mobil"/><font color="red">
     <c:if test="${param.invalidUsername ne null}"> M� tilh�re registrert deltager </c:if>
     <c:if test="${param.requiresLogin ne null}"> Du m� v�re innlogget for � f� tilgang </c:if> 
     </font></p>
    <p><input type="submit" value="Logg inn" /></p>
  </fieldset>
</form>

</body>
</html>