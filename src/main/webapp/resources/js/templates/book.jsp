<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<h2 class="title text-center"><spring:message code="resource.books"/></h2>
{#books}
<div class="col-sm-4">
  <div class="product-image-wrapper">
    <div class="single-products">
      <div class="productinfo text-center">
        <img src="resources/images/home/product1.jpg" alt="" />
        <h2>$999</h2>
        <p>{book}</p>
        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i><spring:message code="resource.card"/></a>
      </div>
      <div class="product-overlay">
        <div class="overlay-content">
          <h2>$999</h2>
          <p><a href="/bpage">{name}</a></p>
          <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i><spring:message code="resource.card"/></a>
        </div>
      </div>
    </div>
    <div class="choose">
      <ul class="nav nav-pills nav-justified">
        <li><a href="#"><i class="fa fa-plus-square"></i><spring:message code="resource.wishlist"/></a></li>
        <%--<li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li>--%>
      </ul>
    </div>
  </div>
</div>
{/books}
</script>