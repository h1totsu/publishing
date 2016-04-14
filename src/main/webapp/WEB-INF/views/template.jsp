<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
            <h2 class="title text-center">New Books</h2>
            <script type="text/template" id="single-item-template">
              <@ _.each(books.models, function(book) {@>
              <div class="col-sm-4">
                <div class="product-image-wrapper">
                    <div class="single-products">
                        <div class="productinfo text-center">
                            <img src="resources/images/home/product1.jpg" alt="" />
                            <h2>$999</h2>
                            <p>Author Author.<@= book.get('book') @></p>
                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                        </div>
                        <div class="product-overlay">
                            <div class="overlay-content">
                                <h2>$999</h2>
                                <p><a href="/bpage">Author Author.<@= book.get('book') @></a></p>
                                <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>
                    <div class="choose">
                        <ul class="nav nav-pills nav-justified">
                            <li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                            <li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li>
                        </ul>
                    </div>
                </div>
              </div>
              <@} ); @>
            </script>
          </div><!--features_items-->
          <div class="recommended_items"><!--recommended_items-->
            <h2 class="title text-center">recommended items</h2>
            <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
              <div class="carousel-inner">
                <div class="item active">
                  <div class="col-sm-4">
                    <div class="product-image-wrapper">
                      <div class="single-products">
                        <div class="productinfo text-center">
                          <img src="resources/images/home/recommend1.jpg" alt="" />
                          <h2>$56</h2>
                          <p>Jean-Christophe Grangé.Passenger</p>
                          <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                        </div>

                      </div>
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="product-image-wrapper">
                      <div class="single-products">
                        <div class="productinfo text-center">
                          <img src="resources/images/home/recommend2.jpg" alt="" />
                          <h2>$56</h2>
                          <p>Fred Vargas.Dead, get up!</p>
                          <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                        </div>

                      </div>
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="product-image-wrapper">
                      <div class="single-products">
                        <div class="productinfo text-center">
                          <img src="resources/images/home/recommend3.jpg" alt="" />
                          <h2>$56</h2>
                          <p>Peter Robinson. Beyond</p>
                          <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                        </div>

                      </div>
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="col-sm-4">
                    <div class="product-image-wrapper">
                      <div class="single-products">
                        <div class="productinfo text-center">
                          <img src="resources/images/home/recommend1.jpg" alt="" />
                          <h2>$56</h2>
                          <p>Jean-Christophe Grangé.Passenger</p>
                          <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                        </div>

                      </div>
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="product-image-wrapper">
                      <div class="single-products">
                        <div class="productinfo text-center">
                          <img src="resources/images/home/recommend2.jpg" alt="" />
                          <h2>$56</h2>
                          <p>Fred Vargas.Dead, get up!</p>
                          <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                        </div>

                      </div>
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="product-image-wrapper">
                      <div class="single-products">
                        <div class="productinfo text-center">
                          <img src="resources/images/home/recommend3.jpg" alt="" />
                          <h2>$56</h2>
                          <p>Peter Robinson. Beyond</p>
                          <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                        </div>

                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
                <i class="fa fa-angle-left"></i>
              </a>
              <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
                <i class="fa fa-angle-right"></i>
              </a>
            </div>
          </div><!--/recommended_items-->
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
  <script src="/resources/js/views/book.js"></script>
  <script src="/resources/js/main.js"></script>
</body>