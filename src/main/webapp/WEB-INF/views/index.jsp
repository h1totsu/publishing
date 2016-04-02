<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="/WEB-INF/views/layout/header.jsp" />
<div><c:out value="${test}"/></div>
<section id="slider"><!--slider-->
  <div class="container">
    <div class="row">
      <div class="col-sm-12">
        <div id="slider-carousel" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
            <li data-target="#slider-carousel" data-slide-to="1"></li>
            <li data-target="#slider-carousel" data-slide-to="2"></li>
          </ol>

          <div class="carousel-inner">
            <div class="item active">
              <div class="col-sm-6">
                <h1>BOOKSHOP</h1>
                <h2>Find yourself in books</h2>
                <p>All new books you can buy here</p>
                <button type="button" class="btn btn-default get">Get it now</button>
              </div>
              <div class="col-sm-6">
                <img src="resources/images/home/girl1.jpg" class="girl img-responsive" alt="" />
                <img src="resources/images/home/pricing.png"  class="pricing" alt="" />
              </div>
            </div>
            <div class="item">
              <div class="col-sm-6">
                <h1>BOOKSHOP</h1>
                <h2>Find yourself in books</h2>
                <p>All new books you can buy here</p>
                <button type="button" class="btn btn-default get">Get it now</button>
              </div>
              <div class="col-sm-6">
                <img src="resources/images/home/girl2.jpg" class="girl img-responsive" alt="" />
                <img src="resources/images/home/pricing.png"  class="pricing" alt="" />
              </div>
            </div>

            <div class="item">
              <div class="col-sm-6">
                <h1>BOOKSHOP</h1>
                <h2>Find yourself in books</h2>
                <p>All new books you can buy here</p>
                <button type="button" class="btn btn-default get">Get it now</button>
              </div>
              <div class="col-sm-6">
                <img src="resources/images/home/girl3.jpg" class="girl img-responsive" alt="" />
                <img src="resources/images/home/pricing.png" class="pricing" alt="" />
              </div>
            </div>

          </div>

          <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
            <i class="fa fa-angle-left"></i>
          </a>
          <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
            <i class="fa fa-angle-right"></i>
          </a>
        </div>

      </div>
    </div>
  </div>
</section><!--/slider-->
<section>
  <div class="container">
    <div class="row">
      <div class="col-sm-3">
        <div class="left-sidebar">
          <h2>Category</h2>
          <div class="panel-group category-products" id="accordian"><!--category-productsr-->
            <div class="panel panel-default">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" data-parent="#accordian" href="#sportswear">
                    <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                    Books
                  </a>
                </h4>
              </div>

            </div>
            <div class="panel panel-default">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" data-parent="#accordian" href="#mens">
                    <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                    Authors
                  </a>
                </h4>
              </div>

            </div>

            <div class="panel panel-default">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" data-parent="#accordian" href="#womens">
                    <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                    Series
                  </a>
                </h4>
              </div>

            </div>
            <div class="panel panel-default">
              <div class="panel-heading">
                <h4 class="panel-title"><a href="#">Genre</a></h4>
              </div>
            </div>
            <div class="panel panel-default">
              <div class="panel-heading">
                <h4 class="panel-title"><a href="#">Catalog</a></h4>
              </div>
            </div>
            <div class="panel panel-default">
              <div class="panel-heading">
                <h4 class="panel-title"><a href="#">New Books</a></h4>
              </div>
            </div>
          </div><!--/category-productsr-->

          <div class="brands_products"><!--brands_products-->
            <h2>Brands</h2>
            <div class="brands-name">
              <ul class="nav nav-pills nav-stacked">
                <li><a href="/drama"> <span class="pull-right">(50)</span>Drama</a></li>
                <li><a href="/detective"> <span class="pull-right">(56)</span>Detective</a></li>
                <li><a href="/fairyTale"> <span class="pull-right">(27)</span>Fairy tale</a></li>
                <li><a href="/fantasy"> <span class="pull-right">(32)</span>Fantasy</a></li>
                <li><a href="/horror"> <span class="pull-right">(5)</span>Horror</a></li>
                <li><a href="/mystery"> <span class="pull-right">(9)</span>Mystery</a></li>
                <li><a href="/shortStory"> <span class="pull-right">(4)</span>Short story</a></li>
              </ul>
            </div>
          </div><!--/brands_products-->

          <div class="price-range"><!--price-range-->
            <h2>Price Range</h2>
            <div class="well">
              <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2" ><br />
              <b>$ 0</b> <b class="pull-right">$ 600</b>
            </div>
          </div><!--/price-range-->

          <div class="shipping text-center"><!--shipping-->
           <!-- <img src="images/home/shipping.jpg" alt="" />-->
          </div><!--/shipping-->

        </div>
      </div>
      <div class="col-sm-9 padding-right">
        <div class="features_items"><!--features_items-->
          <h2 class="title text-center">New Books</h2>
          <div class="col-sm-4">
            <div class="product-image-wrapper">
              <div class="single-products">
                <div class="productinfo text-center">
                  <img src="resources/images/home/product1.jpg" alt="" />
                  <h2>$56</h2>
                  <p>Elena Forbes.Die With Me</p>
                  <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                </div>
                <div class="product-overlay">
                  <div class="overlay-content">
                    <h2>$56</h2>
                    <p><a href="/bpage">Elena Forbes.Die With Me</a></p>
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
          <div class="col-sm-4">
            <div class="product-image-wrapper">
              <div class="single-products">
                <div class="productinfo text-center">
                  <img src="resources/images/home/product2.jpg" alt="" />
                  <h2>$56</h2>
                  <p>Kevin Guilfoile.Cast of Shadows</p>
                  <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                </div>
                <div class="product-overlay">
                  <div class="overlay-content">
                    <h2>$56</h2>
                    <p><a href="/bpage">Kevin Guilfoile.Cast of Shadows</a></p>
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
          <div class="col-sm-4">
            <div class="product-image-wrapper">
              <div class="single-products">
                <div class="productinfo text-center">
                  <img src="resources/images/home/product3.jpg" alt="" />
                  <h2>$56</h2>
                  <p>Jo Nesbø.Flaggermusmannen</p>
                  <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                </div>
                <div class="product-overlay">
                  <div class="overlay-content">
                    <h2>$56</h2>
                    <p><a href="/bpage">Jo Nesbø.Flaggermusmannen</a></p>
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
          <div class="col-sm-4">
            <div class="product-image-wrapper">
              <div class="single-products">
                <div class="productinfo text-center">
                  <img src="resources/images/home/product4.jpg" alt="" />
                  <h2>$56</h2>
                  <p> Brigitte Aubert.Four son of Doctor March</p>
                  <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                </div>
                <div class="product-overlay">
                  <div class="overlay-content">
                    <h2>$56</h2>
                    <p><a href="/bpage">Brigitte Aubert.Four son of Doctor March</a></p>
                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                  </div>
                </div>
                <img src="resources/images/home/new.png" class="new" alt="" />
              </div>
              <div class="choose">
                <ul class="nav nav-pills nav-justified">
                  <li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                  <li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="col-sm-4">
            <div class="product-image-wrapper">
              <div class="single-products">
                <div class="productinfo text-center">
                  <img src="resources/images/home/product5.jpg" alt="" />
                  <h2>$56</h2>
                  <p>Jean-Christophe Grangé.Sworn darkness</p>
                  <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                </div>
                <div class="product-overlay">
                  <div class="overlay-content">
                    <h2>$56</h2>
                    <p><a href="/bpage">Jean-Christophe Grangé.Sworn darkness</a></p>
                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                  </div>
                </div>
                <img src="resources/images/home/sale.png" class="new" alt="" />
              </div>
              <div class="choose">
                <ul class="nav nav-pills nav-justified">
                  <li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                  <li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="col-sm-4">
            <div class="product-image-wrapper">
              <div class="single-products">
                <div class="productinfo text-center">
                  <img src="resources/images/home/product6.jpg" alt="" />
                  <h2>$56</h2>
                  <p>Frank Tile.The Phoenix project</p>
                  <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                </div>
                <div class="product-overlay">
                  <div class="overlay-content">
                    <h2>$56</h2>
                    <p><a href="/bpage">Frank Tile.The Phoenix project</a></p>
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

        </div><!--features_items-->
        </div>
      </div>
    </div>
  </section>
<jsp:include page="/WEB-INF/views/layout/footer.jsp" />