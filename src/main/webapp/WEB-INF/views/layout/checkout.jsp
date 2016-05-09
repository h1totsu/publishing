<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="border" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="header.jsp"/>

<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/css/font-awesome.min.css" rel="stylesheet">
<link href="/resources/css/prettyPhoto.css" rel="stylesheet">
<link href="/resources/css/price-range.css" rel="stylesheet">
<link href="/resources/css/animate.css" rel="stylesheet">
<link href="/resources/css/main.css" rel="stylesheet">
<link href="/resources/css/responsive.css" rel="stylesheet">

<section id="cart_items">
    <div class="container">
        <div class="breadcrumbs">
            <ol class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li class="active">Check out</li>
            </ol>
        </div>
        <!--/breadcrums-->

        <div class="register-req">
            <p>Please use Register And Checkout to easily get access to your order history, or use Checkout as Guest</p>
        </div>
        <!--/register-req-->

        <div class="shopper-informations">
            <div class="row">
                <div class="col-sm-3">
                    <div class="shopper-info">
                        <p>Shopper Information</p>
                        <c:out value="${error}" />
                        <form:form method="post" name="loginForm">
                            <input type="email" placeholder="Email"  name="email" required/>
                            <input type="password" placeholder="Password" name="password" required />
                            <button type="submit" class="btn btn-default">Login</button>
                            <input type="hidden" name="${_csrf.parameterName}"
                                   value="${_csrf.token}" />
                        </form:form>
                    </div>
                </div>
                <div class="col-sm-5 clearfix">
                    <div class="bill-to">
                        <p>Bill To</p>

                        <div class="form-one">
                            <form>
                                <input type="text" placeholder="Email*">
                                <input type="text" placeholder="First Name *">
                                <input type="text" placeholder="Last Name *">
                            </form>
                        </div>
                        <div class="form-two">
                            <p><spring:message code='resource.add_address'/></p>
                            <form:form action="address" method="post" commandName="userAddress">
                                <input type="text" placeholder="Zip / Postal Code *" name="zip" required/>
                                <input type="text" placeholder="City" name="city" required />
                                <input type="text" placeholder="Region" name="region" required />
                                <input type="text" placeholder="Street" name="street" required/>
                                <input type="text" placeholder="House" name="house" required/>
                                <input type="text" placeholder="Flat" name="flat" required />
                                <input type="submit" class="btn btn-primary" value="<spring:message code='resource.Submit'/>"/>
                            </form:form>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="order-message">
                        <p>Shipping Order</p>
                        <textarea name="message" placeholder="Don't know what to write" rows="16"></textarea>
                        <label><input type="checkbox"> Shipping to bill address</label>
                    </div>
                </div>
            </div>
        </div>
        <%--<div class="review-payment">--%>
        <%--<h2>Review & Payment</h2>--%>
        <%--</div>--%>

        <%--<div class="table-responsive cart_info">--%>
        <%--<table class="table table-condensed">--%>
        <%--<thead>--%>
        <%--<tr class="cart_menu">--%>
        <%--<td class="image">Item</td>--%>
        <%--<td class="description"></td>--%>
        <%--<td class="price">Price</td>--%>
        <%--<td class="quantity">Quantity</td>--%>
        <%--<td class="total">Total</td>--%>
        <%--<td></td>--%>
        <%--</tr>--%>
        <%--</thead>--%>
        <%--<tbody>--%>
        <%--<tr>--%>
        <%--<td class="cart_product">--%>
        <%--<a href=""><img src="images/cart/one.png" alt=""></a>--%>
        <%--</td>--%>
        <%--<td class="cart_description">--%>
        <%--<h4><a href="">Colorblock Scuba</a></h4>--%>
        <%--<p>Web ID: 1089772</p>--%>
        <%--</td>--%>
        <%--<td class="cart_price">--%>
        <%--<p>$59</p>--%>
        <%--</td>--%>
        <%--<td class="cart_quantity">--%>
        <%--<div class="cart_quantity_button">--%>
        <%--<a class="cart_quantity_up" href=""> + </a>--%>
        <%--<input class="cart_quantity_input" type="text" name="quantity" value="1" autocomplete="off" size="2">--%>
        <%--<a class="cart_quantity_down" href=""> - </a>--%>
        <%--</div>--%>
        <%--</td>--%>
        <%--<td class="cart_total">--%>
        <%--<p class="cart_total_price">$59</p>--%>
        <%--</td>--%>
        <%--<td class="cart_delete">--%>
        <%--<a class="cart_quantity_delete" href=""><i class="fa fa-times"></i></a>--%>
        <%--</td>--%>
        <%--</tr>--%>

        <%--<tr>--%>
        <%--<td class="cart_product">--%>
        <%--<a href=""><img src="images/cart/two.png" alt=""></a>--%>
        <%--</td>--%>
        <%--<td class="cart_description">--%>
        <%--<h4><a href="">Colorblock Scuba</a></h4>--%>
        <%--<p>Web ID: 1089772</p>--%>
        <%--</td>--%>
        <%--<td class="cart_price">--%>
        <%--<p>$59</p>--%>
        <%--</td>--%>
        <%--<td class="cart_quantity">--%>
        <%--<div class="cart_quantity_button">--%>
        <%--<a class="cart_quantity_up" href=""> + </a>--%>
        <%--<input class="cart_quantity_input" type="text" name="quantity" value="1" autocomplete="off" size="2">--%>
        <%--<a class="cart_quantity_down" href=""> - </a>--%>
        <%--</div>--%>
        <%--</td>--%>
        <%--<td class="cart_total">--%>
        <%--<p class="cart_total_price">$59</p>--%>
        <%--</td>--%>
        <%--<td class="cart_delete">--%>
        <%--<a class="cart_quantity_delete" href=""><i class="fa fa-times"></i></a>--%>
        <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
        <%--<td class="cart_product">--%>
        <%--<a href=""><img src="images/cart/three.png" alt=""></a>--%>
        <%--</td>--%>
        <%--<td class="cart_description">--%>
        <%--<h4><a href="">Colorblock Scuba</a></h4>--%>
        <%--<p>Web ID: 1089772</p>--%>
        <%--</td>--%>
        <%--<td class="cart_price">--%>
        <%--<p>$59</p>--%>
        <%--</td>--%>
        <%--<td class="cart_quantity">--%>
        <%--<div class="cart_quantity_button">--%>
        <%--<a class="cart_quantity_up" href=""> + </a>--%>
        <%--<input class="cart_quantity_input" type="text" name="quantity" value="1" autocomplete="off" size="2">--%>
        <%--<a class="cart_quantity_down" href=""> - </a>--%>
        <%--</div>--%>
        <%--</td>--%>
        <%--<td class="cart_total">--%>
        <%--<p class="cart_total_price">$59</p>--%>
        <%--</td>--%>
        <%--<td class="cart_delete">--%>
        <%--<a class="cart_quantity_delete" href=""><i class="fa fa-times"></i></a>--%>
        <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
        <%--<td colspan="4">&nbsp;</td>--%>
        <%--<td colspan="2">--%>
        <%--<table class="table table-condensed total-result">--%>
        <%--<tr>--%>
        <%--<td>Cart Sub Total</td>--%>
        <%--<td>$59</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
        <%--<td>Exo Tax</td>--%>
        <%--<td>$2</td>--%>
        <%--</tr>--%>
        <%--<tr class="shipping-cost">--%>
        <%--<td>Shipping Cost</td>--%>
        <%--<td>Free</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
        <%--<td>Total</td>--%>
        <%--<td><span>$61</span></td>--%>
        <%--</tr>--%>
        <%--</table>--%>
        <%--</td>--%>
        <%--</tr>--%>
        <%--</tbody>--%>
        <%--</table>--%>
        <%--</div>--%>
        <%--<div class="payment-options">--%>
        <%--<span>--%>
        <%--<label><input type="checkbox"> Direct Bank Transfer</label>--%>
        <%--</span>--%>
        <%--<span>--%>
        <%--<label><input type="checkbox"> Check Payment</label>--%>
        <%--</span>--%>
        <%--<span>--%>
        <%--<label><input type="checkbox"> Paypal</label>--%>
        <%--</span>--%>
        <%--</div>--%>
    </div>
</section>
<!--/#cart_items-->
