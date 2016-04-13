<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title><spring:message code="resource.title" text="Title"/></title>
</head>
    <body>
        <h2><spring:message code="resource.someText" text="H2 text"/> </h2>
        <a href="?lang=en">EN</a> | <a href="?lang=ru">RU</a>
    </body>

    <script src="/resources/js/bower/jquery/dist/jquery.js"></script>
    <script src="/resources/js/bower/underscore/underscore.js"></script>
    <script src="/resources/js/bower/backbone/backbone.js"></script>
    <script src="/resources/js/utils.js"></script>
    <script src="/resources/js/models.js"></script>
    <script src="/resources/js/views.js"></script>
    <script src="/resources/js/main.js"></script>
</html>
