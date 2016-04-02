<jsp:include page="/WEB-INF/views/layout/header.jsp" />

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
            <!--<img src="images/home/shipping.jpg" alt="" />-->
          </div><!--/shipping-->

        </div>
      </div>

      <div class="col-sm-9 padding-right">
        <div class="features_items"><!--features_items-->
          <h2 class="title text-center">Series</h2>
          <div class="col-sm-4">
            <div class="product-image-wrapper">
              <div class="single-products">
                <div class="productinfo text-center">
                  <img src="resources/images/pdetails/drama.jpg" alt="" />

                  <p>Commissioner Guido Brunetti</p>
                  <!--<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>-->
                </div>
                <div class="product-overlay">
                  <div class="overlay-content">

                    <p><a href="/guidoBrunetti">Commissioner Guido Brunetti. </a><a href="/apage">Donna Leon</a></p>
                    <!-- <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>-->
                  </div>
                </div>
              </div>
              <!--<div class="choose">
                  <ul class="nav nav-pills nav-justified">
                      <li><a href=""><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                      <li><a href=""><i class="fa fa-plus-square"></i>Add to compare</a></li>
                  </ul>
              </div>-->
            </div>
          </div>
          <div class="col-sm-4">
            <div class="product-image-wrapper">
              <div class="single-products">
                <div class="productinfo text-center">
                  <img src="resources/images/pdetails/detective.jpg" alt="" />

                  <p>Sean Duffy</p>
                  <!--<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>-->
                </div>
                <div class="product-overlay">
                  <div class="overlay-content">

                    <p><a href="/seanDuffy">Sean Duffy</a><a href="/apage">Adrian Makkinti</a></p>
                    <!-- <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>-->
                  </div>
                </div>
              </div>
              <!-- <div class="choose">
                   <ul class="nav nav-pills nav-justified">
                       <li><a href=""><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                       <li><a href=""><i class="fa fa-plus-square"></i>Add to compare</a></li>
                   </ul>
               </div>-->
            </div>
          </div>
          <div class="col-sm-4">
            <div class="product-image-wrapper">
              <div class="single-products">
                <div class="productinfo text-center">
                  <img src="resources/images/pdetails/product2.jpg" alt="" />

                  <p>Adamberg Commissioner</p>
                  <!--<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>-->
                </div>
                <div class="product-overlay">
                  <div class="overlay-content">

                    <p><a href="/adambergCommissioner">Adamberg Commissioner</a><a href="/apage">Fred Vargas</a></p>
                    <!--  <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>-->
                  </div>
                </div>
              </div>
              <!-- <div class="choose">
                   <ul class="nav nav-pills nav-justified">
                       <li><a href=""><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                       <li><a href=""><i class="fa fa-plus-square"></i>Add to compare</a></li>
                   </ul>
               </div>-->
            </div>
          </div>
          <div class="col-sm-4">
            <div class="product-image-wrapper">
              <div class="single-products">
                <div class="productinfo text-center">
                  <img src="resources/images/home/product1.jpg" alt="" />

                  <p>Inspector Lynley</p>
                  <!-- <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>-->
                </div>
                <div class="product-overlay">
                  <div class="overlay-content">

                    <p><a href="/inspectorLynley">Inspector Lynley</a><a href="/apage">Elizabeth George</a></p>
                    <!--   <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>-->
                  </div>
                </div>
                <img src="/resources/images/home/new.png" class="new" alt="" />
              </div>
              <!--  <div class="choose">
                    <ul class="nav nav-pills nav-justified">
                        <li><a href=""><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                        <li><a href=""><i class="fa fa-plus-square"></i>Add to compare</a></li>
                    </ul>
                </div> -->
            </div>
          </div>
          <div class="col-sm-4">
            <div class="product-image-wrapper">
              <div class="single-products">
                <div class="productinfo text-center">
                  <img src="resources/images/home/product1.jpg" alt="" />

                  <p>Kate Brennigan</p>
                  <!--  <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
                </div>
                <div class="product-overlay">
                  <div class="overlay-content">

                    <p><a href="/kateBrennigan">Kate Brennigan</a><a href="/apage">Val McDermid</a></p>
                    <!--    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
                  </div>
                </div>
                <!-- <img src="/resources/images/home/sale.png" class="new" alt="" />-->
              </div>
              <!--    <div class="choose">
                     <ul class="nav nav-pills nav-justified">
                         <li><a href=""><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                         <li><a href=""><i class="fa fa-plus-square"></i>Add to compare</a></li>
                     </ul>
                 </div> -->
            </div>
          </div>
          <div class="col-sm-4">
            <div class="product-image-wrapper">
              <div class="single-products">
                <div class="productinfo text-center">
                  <img src="resources/images/home/product1.jpg" alt="" />

                  <p>Kurt Wallander</p>
                  <!-- <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
                </div>
                <div class="product-overlay">
                  <div class="overlay-content">

                    <p><a href="/kurtWallander">Kurt Wallander</a><a href="/apage">Henning Mankell</a></p>
                    <!--   <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
                  </div>
                </div>
              </div>
              <!--  <div class="choose">
                   <ul class="nav nav-pills nav-justified">
                       <li><a href=""><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                       <li><a href=""><i class="fa fa-plus-square"></i>Add to compare</a></li>
                   </ul>
               </div> -->
            </div>
          </div>

          <div class="col-sm-4">
            <div class="product-image-wrapper">
              <div class="single-products">
                <div class="productinfo text-center">
                  <img src="resources/images/home/product6.jpg" alt="" />

                  <p>about police inspector Harry Hole</p>
                  <!--    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
                </div>
                <div class="product-overlay">
                  <div class="overlay-content">

                    <p><a href="/harryHole">about police inspector Harry Hole</a><a href="/apage">Jo Nesbø</a></p>
                    <!--   <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
                  </div>
                </div>
              </div>
              <!--   <div class="choose">
                    <ul class="nav nav-pills nav-justified">
                        <li><a href=""><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                        <li><a href=""><i class="fa fa-plus-square"></i>Add to compare</a></li>
                    </ul>
                </div> -->
            </div>
          </div>

          <div class="col-sm-4">
            <div class="product-image-wrapper">
              <div class="single-products">
                <div class="productinfo text-center">
                  <img src="resources/images/home/product5.jpg" alt="" />

                  <p>Private Investigator Neil Carey</p>
                  <!--   <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
                </div>
                <div class="product-overlay">
                  <div class="overlay-content">

                    <p><a href="/neilCareyРоберт Уилсон">Private Investigator Neil Carey</a><a href="/apage">Don Winslow</a></p>
                    <!--       <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
                  </div>
                </div>
              </div>
              <!--    <div class="choose">
                      <ul class="nav nav-pills nav-justified">
                          <li><a href=""><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                          <li><a href=""><i class="fa fa-plus-square"></i>Add to compare</a></li>
                      </ul>
                  </div> -->
            </div>
          </div>

          <div class="col-sm-4">
            <div class="product-image-wrapper">
              <div class="single-products">
                <div class="productinfo text-center">
                  <img src="resources/images/home/product4.jpg" alt="" />

                  <p>Javier Falcon</p>
                  <!--   <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
                </div>
                <div class="product-overlay">
                  <div class="overlay-content">

                    <p><a href="/javierFalcon">Javier Falcon</a><a href="/apage">Robert Wilson</a></p>
                    <!--      <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
                  </div>
                </div>
              </div>
              <!--      <div class="choose">
                       <ul class="nav nav-pills nav-justified">
                           <li><a href=""><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                           <li><a href=""><i class="fa fa-plus-square"></i>Add to compare</a></li>
                       </ul>
                   </div> -->
            </div>
          </div>

          <div class="col-sm-4">
            <div class="product-image-wrapper">
              <div class="single-products">
                <div class="productinfo text-center">
                  <img src="resources/images/home/product3.jpg" alt="" />

                  <p>David Sloane </p>
                  <!--         <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
                </div>
                <div class="product-overlay">
                  <div class="overlay-content">

                    <p><a href="/davidSloane">David Sloane </a><a href="/apage">Robert Dugoni</a></p>
                    <!--           <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
                  </div>
                </div>
              </div>
              <!--      <div class="choose">
                       <ul class="nav nav-pills nav-justified">
                           <li><a href=""><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                           <li><a href=""><i class="fa fa-plus-square"></i>Add to compare</a></li>
                       </ul>
                   </div> -->
            </div>
          </div>


          <div class="col-sm-4">
            <div class="product-image-wrapper">
              <div class="single-products">
                <div class="productinfo text-center">
                  <img src="resources/images/home/product2.jpg" alt="" />
                  <p>Inspector Rebus </p>
                  <!--           <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
                </div>
                <div class="product-overlay">
                  <div class="overlay-content">

                    <p><a href="/inspectorRebus">Inspector Rebus </a><a href="/apage">Ian Rankin</a></p>
                    <!--      <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
                  </div>
                </div>
              </div>
              <!--    <div class="choose">
                      <ul class="nav nav-pills nav-justified">
                          <li><a href=""><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                          <li><a href=""><i class="fa fa-plus-square"></i>Add to compare</a></li>
                      </ul>
                  </div> -->
            </div>
          </div>

          <div class="col-sm-4">
            <div class="product-image-wrapper">
              <div class="single-products">
                <div class="productinfo text-center">
                  <img src="resources/images/home/product1.jpg" alt="" />

                  <p>Bruce</p>
                  <!--      <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
                </div>
                <div class="product-overlay">
                  <div class="overlay-content">

                    <p><a href="/bruce">Bruce</a><a href="/apage">Dominique Sylvain</a></p>
                    <!--            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
                  </div>
                </div>
              </div>
              <!--        <div class="choose">
                         <ul class="nav nav-pills nav-justified">
                             <li><a href=""><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                             <li><a href=""><i class="fa fa-plus-square"></i>Add to compare</a></li>
                         </ul>
                     </div> -->
            </div>
          </div>

          <ul class="pagination">
            <li class="active"><a href="">1</a></li>
            <li><a href="">2</a></li>
            <li><a href="">3</a></li>
            <li><a href="">&raquo;</a></li>
          </ul>
        </div><!--features_items-->
      </div>
    </div>
  </div>
</section>

<jsp:include page="/WEB-INF/views/layout/footer.jsp" />