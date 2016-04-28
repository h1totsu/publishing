<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<p>Information for register</p>
<form:form action="register" method="post" commandName="userForm">
    <table>
        <tr>
            <td><spring:message code='resource.last_name_title'/> :</td>
            <td><input type="text" name="firstname" size="30" required/></td>
        </tr>
        <tr>
            <td><spring:message code='resource.last_name_title'/> :</td>
            <td><input type="text" name="lastname" size="30" required/></td>
        </tr>
        <tr>
            <td><spring:message code='resource.email_title'/> :</td>
            <td><input type="email" name="email" size="30" required/></td>
        </tr>
        <tr>
            <td><spring:message code='resource.password_title'/> :</td>
            <td><input type="password" name="password" size="30" required/></td>
        </tr>
        <tr>
            <td><spring:message code='resource.confirm_password_title'/> :</td>
            <td><input type="password" name="confirmPassword" size="30" required/></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="Register"/></td>
        </tr>
    </table>

    </form>
    </div><!--/sign up form-->
</form:form>
</div>

