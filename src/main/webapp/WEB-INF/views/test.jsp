<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title><spring:message code="resource.title" text="Title"/></title>
    <script data-main="/resources/js/main.js" src="/resources/js/require.js"></script>
</head>
    <body>
        <a href="?lang=en">EN</a> | <a href="?lang=ru">RU</a>
        <div id="test"></div>
    </body>
</html>
