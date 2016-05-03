<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>User Login.</title>
</head>
<body>
<h4>User Login.</h4>
<form:form method="post" name="loginForm">
  <table>
    <tr><td>User Email: </td><td><input name="email" type="textbox"></td></tr>
    <tr><td>Password: </td><td><input name="password" type="password"></td></tr>
    <tr><td colspan="2" align="right"><input type="submit" value="Submit"></td></tr>
  </table>
  <input type="hidden" name="${_csrf.parameterName}"
         value="${_csrf.token}" />
  <div style="color:red">${error}</div>
</form:form>

</body>