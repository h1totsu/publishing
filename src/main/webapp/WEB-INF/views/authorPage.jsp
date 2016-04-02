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
            <img src="images/home/shipping.jpg" alt="" />
          </div><!--/shipping-->

        </div>
      </div>
      <div class="col-sm-9 padding-right">
        <div class="product-details"><!--product-details-->
          <div class="col-sm-5">
            <div class="view-product">
              <img src="resources/images/pdetails/2.jpg" alt="" />
              <h3>ZOOM</h3>
            </div>
            <div id="similar-product" class="carousel slide" data-ride="carousel">

              <!-- Wrapper for slides -->
              <div class="carousel-inner">
                <div class="item active">
                  <a href=""><img src="resources/images/pdetails/isimilar1.jpg" alt=""></a>
                  <a href=""><img src="resources/images/pdetails/isimilar2.jpg" alt=""></a>
                  <a href=""><img src="resources/images/pdetails/isimilar3.jpg" alt=""></a>
                </div>
                <div class="item">
                  <a href=""><img src="resources/images/pdetails/isimilar1.jpg" alt=""></a>
                  <a href=""><img src="resources/images/pdetails/isimilar2.jpg" alt=""></a>
                  <a href=""><img src="resources/images/pdetails/isimilar3.jpg" alt=""></a>
                </div>
                <div class="item">
                  <a href=""><img src="resources/images/pdetails/isimilar1.jpg" alt=""></a>
                  <a href=""><img src="resources/images/pdetails/isimilar2.jpg" alt=""></a>
                  <a href=""><img src="resources/images/pdetails/isimilar3.jpg" alt=""></a>
                </div>

              </div>

              <!-- Controls -->
              <a class="left item-control" href="#similar-product" data-slide="prev">
                <i class="fa fa-angle-left"></i>
              </a>
              <a class="right item-control" href="#similar-product" data-slide="next">
                <i class="fa fa-angle-right"></i>
              </a>
            </div>

          </div>
          <div class="col-sm-7">
            <div class="product-information"><!--/product-information-->
              <img src="resources/images/product-details/new.jpg" class="newarrival" alt="" />
              <h2>Jean-Christophe Grangé</h2>
              <p>Web ID: 1089772</p>
              <img src="resources/images/product-details/rating.png" alt="" />
								<span>
									<!--<span>US $59</span>
									<label>Quantity:</label>
									<input type="text" value="3" />
									<button type="button" class="btn btn-fefault cart">
                                      <i class="fa fa-shopping-cart"></i>
                                      Add to cart
                                    </button>-->
								</span>
              <p><b>Most popular:</b> Flight of the Storks,The Empire of the Wolves </p>
              <p><b>Genre:</b> <a href="/detective">Detective</a></p>
              <p><b></b> </p>
              <a href=""><img src="resources/images/product-details/share.png" class="share img-responsive"  alt="" /></a>
            </div><!--/product-information-->
          </div>
        </div><!--/product-details-->

        <div class="category-tab shop-details-tab"><!--category-tab-->
          <div class="col-sm-12">
            <ul class="nav nav-tabs">
              <li><a href="#details" data-toggle="tab">Details</a></li>
              <!--<li><a href="#companyprofile" data-toggle="tab">Company Profile</a></li>
              <li><a href="#tag" data-toggle="tab">Tag</a></li>-->
              <li class="active"><a href="#reviews" data-toggle="tab">Reviews (5)</a></li>
            </ul>
          </div>
          <div class="tab-content">
            <div class="tab-pane fade" id="details" >
              <div class="col-sm-3">
                <div class="product-image-wrapper">
                  <div class="single-products">
                    <div class="productinfo text-center">
                      <img src="resources/images/pdetails/gallery1.jpg" alt="" />
                      <h2>$56</h2>
                      <p>Flight of the Storks</p>
                      <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="product-image-wrapper">
                  <div class="single-products">
                    <div class="productinfo text-center">
                      <img src="resources/images/pdetails/gallery2.jpg" alt="" />
                      <h2>$56</h2>
                      <p>Kajken</p>
                      <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="product-image-wrapper">
                  <div class="single-products">
                    <div class="productinfo text-center">
                      <img src="resources/images/pdetails/gallery3.jpg" alt="" />
                      <h2>$56</h2>
                      <p>The empire of the wolves</p>
                      <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="product-image-wrapper">
                  <div class="single-products">
                    <div class="productinfo text-center">
                      <img src="resources/images/pdetails/gallery4.jpg" alt="" />
                      <h2>$56</h2>
                      <p>Miserere</p>
                      <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!--<div class="tab-pane fade" id="companyprofile" >
                <div class="col-sm-3">
                    <div class="product-image-wrapper">
                        <div class="single-products">
                            <div class="productinfo text-center">
                                <img src="resources/images/pdetails/gallery1.jpg" alt="" />
                                <h2>$56</h2>
                                <p>Flight of the Storks</p>
                                <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="product-image-wrapper">
                        <div class="single-products">
                            <div class="productinfo text-center">
                                <img src="resources/images/pdetails/gallery3.jpg" alt="" />
                                <h2>$56</h2>
                                <p>The empire of the wolves</p>
                                <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="product-image-wrapper">
                        <div class="single-products">
                            <div class="productinfo text-center">
                                <img src="resources/images/pdetails/gallery2.jpg" alt="" />
                                <h2>$56</h2>
                                <p>Kajken</p>
                                <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="product-image-wrapper">
                        <div class="single-products">
                            <div class="productinfo text-center">
                                <img src="resources/images/pdetails/gallery4.jpg" alt="" />
                                <h2>$56</h2>
                                <p>Miserere</p>
                                <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>-->

            <!--<div class="tab-pane fade" id="tag" >
                <div class="col-sm-3">
                    <div class="product-image-wrapper">
                        <div class="single-products">
                            <div class="productinfo text-center">
                                <img src="resources/images/home/gallery1.jpg" alt="" />
                                <h2>$56</h2>
                                <p>Easy Polo Black Edition</p>
                                <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="product-image-wrapper">
                        <div class="single-products">
                            <div class="productinfo text-center">
                                <img src="resources/images/home/gallery2.jpg" alt="" />
                                <h2>$56</h2>
                                <p>Easy Polo Black Edition</p>
                                <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="product-image-wrapper">
                        <div class="single-products">
                            <div class="productinfo text-center">
                                <img src="resources/images/home/gallery3.jpg" alt="" />
                                <h2>$56</h2>
                                <p>Easy Polo Black Edition</p>
                                <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="product-image-wrapper">
                        <div class="single-products">
                            <div class="productinfo text-center">
                                <img src="resources/images/home/gallery4.jpg" alt="" />
                                <h2>$56</h2>
                                <p>Easy Polo Black Edition</p>
                                <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>-->

            <div class="tab-pane fade active in" id="reviews" >
              <div class="col-sm-12">
                <ul>
                  <li><a href=""><i class="fa fa-user"></i>EUGEN</a></li>
                  <li><a href=""><i class="fa fa-clock-o"></i>12:41 PM</a></li>
                  <li><a href=""><i class="fa fa-calendar-o"></i>31 DEC 2014</a></li>
                </ul>
                <p>blablabla</p>
                <p><b>Write Your Review</b></p>

                <form action="#">
										<span>
											<input type="text" placeholder="Your Name"/>
											<input type="email" placeholder="Email Address"/>
										</span>
                  <textarea name="" ></textarea>
                  <b>Rating: </b> <img src="resources/images/product-details/rating.png" alt="" />
                  <button type="button" class="btn btn-default pull-right">
                    Submit
                  </button>
                </form>
              </div>
            </div>

          </div>
        </div><!--/category-tab-->
