<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Home | E-Shopper</title>
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="/resources/css/prettyPhoto.css" rel="stylesheet">
    <link href="/resources/css/price-range.css" rel="stylesheet">
    <link href="/resources/css/animate.css" rel="stylesheet">
    <link href="/resources/css/main.css" rel="stylesheet">
    <link href="/resources/css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="/resources/js/html5shiv.js"></script>
    <script src="/resources/js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/resources/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/resources/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/resources/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="/resources/images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>
<jsp:include page="/WEB-INF/views/layout/header.jsp" />
<jsp:include page="/WEB-INF/views/layout/slider.jsp" />

<section>
    <div class="container">
        <div class="row">

            <jsp:include page="layout/leftSidebar.jsp"/>

            <div class="col-sm-9 padding-right">
                <div class="features_items"><!--features_items-->
                    <h2 class="title text-center">Authors</h2>
                    <div id="author"></div>
                    <script type="text/template" id="author-item-template">
                        <@ _.each(authors.models, function(author) {@>
                        <div class="col-sm-4">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <img src="resources/images/home/product1.jpg" alt="" />
                                        <h2>$999</h2>
                                        <p>Author Author.<@= author.get('author') @></p>
                                        <%--<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>--%>
                                    </div>
                                    <div class="product-overlay">
                                        <div class="overlay-content">
                                            <h2>$999</h2>
                                            <p><a href="/bpage">Author Author.<@= author.get('author') @></a></p>
                                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="choose">
                                    <%--<ul class="nav nav-pills nav-justified">--%>
                                        <%--<li><a href="#"><i class="fa fa-plus-square"></i><spring:message code="resource.Add_to_wishlist"/></a></li>--%>
                                        <%--<li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li>--%>
                                    <%--</ul>--%>
                                </div>
                            </div>
                        </div>
                        <@} ); @>
                    </script>
                </div><!--features_items-->

            </div>
        </div>
    </div>
</section>
<jsp:include page="/WEB-INF/views/layout/footer.jsp" />

<script src="/resources/js/bower/jquery/dist/jquery.js"></script>
<script src="/resources/js/bower/underscore/underscore.js"></script>
<script src="/resources/js/bower/backbone/backbone.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/jquery.scrollUp.min.js"></script>
<script src="/resources/js/price-range.js"></script>
<script src="/resources/js/jquery.prettyPhoto.js"></script>

<script src="/resources/js/utils.js"></script>
<script src="/resources/js/models.js"></script>
<script src="/resources/js/views.js"></script>
<script src="/resources/js/main.js"></script>
</body>