<?php echo $header; ?>
<section class="bread-crumb">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <ul class="breadcrumb" itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
                    <?php foreach ($breadcrumbs as $key=>$breadcrumb) { ?>
                        <li>
                            <?php if ($key == count($breadcrumbs) - 1) { ?>
                                <strong><span itemprop="title"><?php echo $breadcrumb['text']; ?></span></strong>
                            <?php } else { ?>
                                <a itemprop="url" href="<?php echo $breadcrumb['href']; ?>">
                                    <span itemprop="title"><?php echo $breadcrumb['text']; ?></span>
                                </a>
                                <span>
                                    <i class="fa fa-angle-right" aria-hidden="true"></i>
                                </span>
                            <?php } ?>
                        </li>
                    <?php } ?>
                </ul>
            </div>
        </div>
    </div>
</section>
<section class="product margin-top-20" itemscope itemtype="http://schema.org/Product">
    <div class="container">
        <div class="row">
            <div class="details-product">
                <div class="col-lg-9 col-md-12 col-sm-12 col-xs-12">
                    <div class="rows">
                        <div class="product-detail-left product-images col-xs-12 col-sm-6 col-md-5 col-lg-5">
                            <div class="row">
                                <div class="col-large-full large-image">
                                    <a href="//bizweb.dktcdn.net/thumb/1024x1024/100/311/807/products/8-fe506b0a-30a0-4312-8ac4-70575d51fd3f.jpg?v=1526661845030"></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-lg-7 details-pro">
                            <h1 class="title-product"><?php echo $heading_title; ?></h1>
                            <div class="group-status">
                                <span class="first-status">
                                    <?php echo "Thương hiệu: "; ?>
                                    <span class="status-name">Sun Fashion</span>
                                </span>
                                <span class="first-status">
                                    &nbsp;|&nbsp;<?php echo "Tình trạng: "; ?>
                                    <span class="status-name availabel">Còn hàng</span>
                                </span>
                            </div>
                            <div class="reviews-details-product">
                                <div class="product-reviews-badge" data-id=""></div>
                            </div>
                            <div class="price-box" itemscope itemtype="http://schema.org/Offer">
                                <span class="special-price"><span class="price product-price" itemprop="price">560.000₫</span>
									<meta itemprop="priceCurrency" content="VND">
								</span>
                                <span class="old-price">
                                    <del class="price product-price-old sale" itemprop="priceSpecification">900.000₫</del>
									<meta itemprop="priceCurrency" content="VND">
								</span>
                            </div>
                            <div class="product-summary product-description">
                                <div class="rte description  rte-summary">
                                    <p>Chất liệu vải bố bền, chắc chắn, kéo dài thời gian sử dụng, đem lại yên tâm cho người sử dụng. Thiết kế thời trang, phối màu nổi bật cho phái đẹp và phái mạnh tự tin xuống phố</p>
                                </div>
                            </div>
                            <div class="form-product col-sm-12">
                                <form enctype="multipart/form-data" id="add-to-cart-form" action="/cart/add" method="post" class="form-inline margin-bottom-0">
                                    <div class="box-variant clearfix">
                                        <input type="hidden" name="variantId" value="18605697">
                                    </div>
                                    <div class="form-group form_button_details margin-top-5">
                                        <div class="form-product-content">
                                            <div class="soluong show">
                                                <div class="label-qty margin-bottom-10">Số lượng:</div>
                                                <div class="custom input_number_product custom-btn-number form-control">
                                                    <button class="btn_num num_1 button button_qty" onclick="var result = document.getElementById('qtym'); var qtypro = result.value; if( !isNaN( qtypro ) &amp;&amp; qtypro > 1 ) result.value--;return false;" type="button">-</button>
                                                    <input type="text" id="qtym" name="quantity" value="1" onkeyup="valid(this,'numbers')" onkeypress="validate(event)" class="form-control prd_quantity">
                                                    <button class="btn_num num_2 button button_qty" onclick="var result = document.getElementById('qtym'); var qtypro = result.value; if( !isNaN( qtypro )) result.value++;return false;" type="button">+</button>
                                                </div>
                                            </div>
                                            <div class="button_actions clearfix">
                                                <button type="submit" class="btn btn_base btn_add_cart btn-cart add_to_cart">
                                                    <span class="text_1">MUA NGAY</span>
                                                    <span class="text_2">Giao hàng miễn phí tận nơi</span>
                                                </button>
                                                <a class="btn btn_base btn_call" href="tel:1234567890">
                                                    <span class="text_1">GỌI ĐẶT HÀNG</span>
                                                    <span class="text_2">Vui lòng gọi ngay 1234567890</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="tab-h">
                        <div class="col-xs-12 col-lg-12 col-sm-12 col-md-12 no-padding">
                            <div class="product-tab e-tabs">
                                <ul class="tabs tabs-title clearfix">
                                    <li class="tab-link current" data-tab="tab-1">
                                        <h3><span><?php echo "Mô tả sản phẩm"; ?></span></h3>
                                    </li>
                                </ul>
                                <div class="tab-content current" id="tab-1">
                                    <div class="rte">
                                        <div class="product-well">
                                            <div class="ba-text-fpt"></div>
                                            <div class="show-more">
                                                <a class="btn btn-default btn--view-more">
                                                    <span class="more-text">Xem đầy đủ</span>
                                                    <span class="less-text">Thu gọn</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-12 hidden-xs hidden-sm hidden-md">
                    <div class="right-module">
                        <div class="module-service-details">
                            <div class="wrap-module-service"></div>
                            <div class="module-best-sale-product">
                                <div class="title-module_">
                                    <h2 class="title"><?php echo "Có thể bạn thích"; ?></h2>
                                </div>
                                <div class="sale-off-today">
                                    <div class="not-dqowl wrp-list-product">
                                        <div class="item-small">
                                            <div class="product-mini-item clearfix on-sale">
                                                <a href="#" class="product-img">
                                                    <img src="#" alt="dfasd">
                                                </a>
                                                <div class="product-info">
                                                    <h3>
                                                        <a href="#" class="product-name text3line" title="diafsjd"></a>
                                                    </h3>
                                                    <div class="price-box">
                                                        <span class="price">
                                                            <span class="price product-price">99.000đ</span>
                                                        </span>
                                                        <span class="old-price">
                                                            <span class="sale-price">195.000đ</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 related-product margin-top-20 xs-margin-top-0 margin-bottom-30"></div>
            </div>
        </div>
    </div>
</section>
<?php echo $footer; ?>
