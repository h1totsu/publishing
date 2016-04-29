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
            <div class="col-sm-5 clearfix">
                <div  class="bill-to">
                <%--<div  class="form-two">--%>
                <p>Information for register</p>
                <form:form action="register" method="post" commandName="userForm">
                    <table align="center">
                        <tr>
                            <td>
                                <spring:message code='resource.first_name_title'/>:
                            </td>
                            <td><input type="text" name="firstname" size="45" required/></td>
                        </tr>
                        <tr>
                            <td>
                                <spring:message code='resource.last_name_title'/>:
                            </td>

                            <td><input type="text" name="lastname" size="45" required/></td>
                        </tr>
                        <tr>
                            <td>
                                <spring:message code='resource.email_title'/>:
                            </td>

                            <td><input type="email" name="email" size="45" required/></td>
                        </tr>
                        <tr>
                            <td>
                                <spring:message code='resource.password_title'/>:
                            </td>

                            <td><input type="password" name="password" size="45" required/></td>
                        </tr>
                        <tr>
                            <td>
                                <spring:message code='resource.confirm_password_title'/>:
                            </td>

                            <td><input type="password" name="confirmPassword" size="45" required/></td>
                        </tr>
                            <%--<a class="btn btn-primary" href=""><spring:message code='resource.submit'/></a>--%>
                        <tr>
                            <td colspan="2" align="center"><input type="submit" class="btn btn-primary"
                                                                  value="Register"/></td>
                        </tr>
                    </table>
                </form:form>
            </div>
        </div>
    </div>
</div>
</div>
</div>
<jsp:include page="/WEB-INF/views/layout/footer.jsp" />