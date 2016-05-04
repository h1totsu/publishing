<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <sec:csrfMetaTags/>
</head>
<header id="header"><!--header-->
  <div class="header_top"><!--header_top-->
    <div class="container">
      <div class="row">
        <div class="col-sm-6">
          <div class="contactinfo">
            <ul class="nav nav-pills">
              <li><a href="#"><i class="fa fa-phone"></i> +2 95 01 88 821</a></li>
              <li><a href="#"><i class="fa fa-envelope"></i> info@domain.com</a></li>
            </ul>
          </div>
        </div>
        <div class="col-sm-6">
          <div class="social-icons pull-right">
            <ul class="nav navbar-nav">
              <li><a href="#"><i class="fa fa-facebook"></i></a></li>
              <li><a href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
              <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
              <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div><!--/header_top-->

  <div class="header-middle"><!--header-middle-->
    <div class="container">
      <div class="row">
        <div class="col-sm-4">
          <div class="logo pull-left">
            <a href="/book"><img src="resources/images/home/logo.png" alt="" /></a>
          </div>
          <div class="btn-group pull-right">
            <div class="btn-group">
              <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
                USA
                <span class="caret"></span>
              </button>
              <ul class="dropdown-menu">
                <li><a href="#">Canada</a></li>
                <li><a href="#">UK</a></li>
              </ul>
            </div>

            <div class="btn-group">
              <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
                DOLLAR
                <span class="caret"></span>
              </button>
              <ul class="dropdown-menu">
                <li><a href="#">Canadian Dollar</a></li>
                <li><a href="#">Pound</a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-sm-8">
          <div class="shop-menu pull-right">
            <ul class="nav navbar-nav">
              <li><a href="#"><i class="fa fa-user"></i> Account</a></li>
              <li><a href="#"><i class="fa fa-star"></i> Wishlist</a></li>
              <li><a href="checkout.html"><i class="fa fa-crosshairs"></i> Checkout</a></li>
              <li><a href="cart.html"><i class="fa fa-shopping-cart"></i> Cart</a></li>
              <%--<li><a href="/layout/reglog"><i class="fa fa-lock"></i> Login</a></li>--%>
              <%--<li><a href="layout/reglog"><i class="fa fa-lock"></i> Registration</a></li>--%>
              <li>
                <a href="?lang=en">EN</a>
              </li>
              <li>
                <a href="?lang=ru">RU</a>
              </li>

                <sec:authorize access="isAuthenticated()">
                    <a href="<c:url value="/j_spring_security_logout" />">Logout</a>
                </sec:authorize>


              <sec:authorize access="!isAuthenticated()">
                <li><a href="/reglog" class="button special"><spring:message code="resource.login"/></a></li>
                <li><a href="/register" class="button special"><spring:message code="resource.registration"/></a></li>
              </sec:authorize>


            </ul>
          </div>
        </div>
      </div>
    </div>
  </div><!--/header-middle-->
  <div class="header-bottom"><!--header-bottom-->
    <div class="container">
      <div class="row">
        <div class="col-sm-9">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
          </div>
          <div class="mainmenu pull-left">
            <ul class="nav navbar-nav collapse navbar-collapse">
              <li><a href="#books" class="active"><spring:message code="resource.home"/></a></li>
              <li class="dropdown"><a href="#"><spring:message code="resource.shop"/><i class="fa fa-angle-down"></i></a>
                <ul role="menu" class="sub-menu">
                  <li><a href="#books"/><spring:message code="resource.books"/></li>
                  <li> <a href="#authors"><spring:message code="resource.authors"/></a></li>
                  <li><a href="checkout.html"><spring:message code="resources.catalog"/></a></li>
                  <li><a href="/newBooks"><spring:message code="resource.newbooks"/></a></li>
                </ul>
              </li>
              <li class="dropdown"><a href="#"><spring:message code="resource.more"/><i class="fa fa-angle-down"></i></a>
                <ul role="menu" class="sub-menu">
                  <li><a href="#series"><spring:message code="resource.series"/></a></li>
                  <li><a href="#genres"><spring:message code="resource.genres"/></a></li>
                </ul>
              </li>
              <li><a href="404.html">404</a></li>
              <li><a href="contact-us.html"><spring:message code="resource.about"/></a></li>
            </ul>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="search_box pull-right">
            <input type="text" placeholder="Search"/>
          </div>
        </div>
      </div>
    </div>
  </div><!--/header-bottom-->
</header><!--/header-->
