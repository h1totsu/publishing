<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="col-sm-4">
  <div class="signup-form"><!--sign up form-->
    <h2>Add address!</h2>
    <form:form action="address" method="post" commandName="userAddress">
    <table cellpadding="3pt">
      <tr>
        <td>city :</td>
        <td><input type="text" name="city" size="30" required/></td>
      </tr>
      <tr>
        <td>region :</td>
        <td><input type="text" name="region" size="30" required/></td>
      </tr>
      <tr>
        <td>street:</td>
        <td><input type="text" name="street" size="30"  required/></td>
      </tr>
      <tr>
        <td>house:</td>
        <td><input type="text" name="house" size="30"  required/></td>
      </tr>
      <tr>
        <td>flat:</td>
        <td><input type="text" name="flat" size="30" required/></td>
      </tr>
      <tr>
        <td>zip:</td>
        <td><input type="text" name="zip" size="30" required/></td>
      </tr>
      <tr>
        <td colspan="2" align="center"><input type="submit" value="Submit" /></td>
      </tr>
    </table>

    </form>
  </div><!--/sign up form-->
  </form:form>
</div>
