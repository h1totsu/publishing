<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
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
</body>
</html>
