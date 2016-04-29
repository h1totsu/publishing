<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="border" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="header.jsp"/>

<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/css/font-awesome.min.css" rel="stylesheet">
<link href="/resources/css/prettyPhoto.css" rel="stylesheet">
<link href="/resources/css/price-range.css" rel="stylesheet">
<link href="/resources/css/animate.css" rel="stylesheet">
<link href="/resources/css/main.css" rel="stylesheet">
<link href="/resources/css/responsive.css" rel="stylesheet">
<div style="text-align: center;">
  <div class="shopper-informations">
    <div class="row">


<div align="center">
  <table border="0" align="center">
    <tr>
      <td colspan="2" align="center"><h2>Registration Succeeded!</h2></td>
    </tr>
    <tr>
      <td colspan="2" align="center">
        <h3>Thank you for registering! Here's the review of your details:</h3>
      </td>
    </tr>
    <tr>
      <td>first Name:</td>
      <td>${userForm.firstname}</td>
    </tr>
    <tr>
      <td>last Name:</td>
      <td>${userForm.lastname}</td>
    </tr>
    <tr>
      <td>E-mail:</td>
      <td>${userForm.email}</td>
    </tr>
  </table>
</div>
          </div></div></div></div></div>
<div>.</div>
<div>.</div>
<jsp:include page="/WEB-INF/views/layout/footer.jsp" />