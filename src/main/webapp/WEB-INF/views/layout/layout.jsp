<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<html>
<body >
<table border="0"  >
    <tr>
       <td> <tiles:insertAttribute name="header" /> </td>
    </tr>
    <tr>

         <td>   <tiles:insertAttribute name="menu" /> </td>
        <td>  <tiles:insertAttribute name="body" /></td>
    </tr>
    <tr>

        <td> <tiles:insertAttribute name="footer" /></td>
    </tr>
</table>
</body>
</html>