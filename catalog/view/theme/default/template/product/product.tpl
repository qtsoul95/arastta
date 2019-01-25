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
                            <div class="row thumbnails">
                                <div class="col-large-full large-image">
                                    <?php if ($thumb) { ?>
                                        <a class="thumbnail" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>">
                                            <img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
                                        </a>
                                    <?php } ?>
                                </div>
                                <?php if ($images) { ?>
                                    <div class="owl-carousel" id="product-thumbnail">
                                        <?php foreach ($images as $image) { ?>
                                            <a class="thumbnail" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>">
                                                <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
                                            </a>
                                        <?php } ?>
                                    </div>
                                <?php } ?>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-lg-7 details-pro">
                            <h1 class="title-product"><?php echo $heading_title; ?></h1>
                            <div class="group-status">
                                <?php if ($manufacturer) { ?>
                                <span class="first-status">
                                    <?php echo "Thương hiệu: "; ?>
                                    <span class="status-name"><?php echo $manufacturer; ?></span>
                                </span> &nbsp;|&nbsp;
                                <?php } ?>
                                <span class="first-status">
                                   <?php echo "Tình trạng: "; ?>
                                    <span class="status-name availabel">Còn hàng</span>
                                </span>
                            </div>
                            <div class="reviews-details-product">
                                <div class="product-reviews-badge" data-id=""></div>
                            </div>
                            <div class="price-box" itemscope itemtype="http://schema.org/Offer">
                                <?php if (!$special) { ?>
                                    <span class="special-price"><span class="price product-price" itemprop="price"><?php echo $price; ?></span>
                                        <meta itemprop="priceCurrency" content="VND">
                                    </span>
                                <?php } else { ?>
                                    <span class="special-price"><span class="price product-price" itemprop="price"><?php echo $special; ?></span>
                                        <meta itemprop="priceCurrency" content="VND">
                                    </span>
                                    <span class="old-price">
                                        <del class="price product-price-old sale" itemprop="priceSpecification"><?php echo $price; ?></del>
                                        <meta itemprop="priceCurrency" content="VND">
                                    </span>
                                <?php } ?>
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
                                                    <input type="text" id="qtym" name="quantity" value="1" onkeyup="validateNumber(event)" onkeypress="validateNumber(event)" class="form-control prd_quantity">
                                                    <button class="btn_num num_2 button button_qty" onclick="var result = document.getElementById('qtym'); var qtypro = result.value; if( !isNaN( qtypro )) result.value++;return false;" type="button">+</button>
                                                </div>
                                            </div>
                                            <div class="button_actions clearfix">
                                                <button type="submit" class="btn btn_base btn_add_cart btn-cart add_to_cart">
                                                    <span class="text_1">MUA NGAY</span>
                                                    <span class="text_2">Giao hàng miễn phí tận nơi</span>
                                                </button>
                                                <a class="btn btn_base btn_call" href="tel:<?php echo $telephone; ?>">
                                                    <span class="text_1">GỌI ĐẶT HÀNG</span>
                                                    <span class="text_2">Vui lòng gọi ngay <?php echo $telephone; ?></span>
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
                                    <li class="tab-link current" data-tab="tab-description">
                                        <h3><span><?php echo $tab_description; ?></span></h3>
                                    </li>
                                    <?php if ($attribute_groups) { ?>
                                        <li class="tab-link" data-tab="tab-specification">
                                            <h3><span><?php echo $tab_attribute; ?></span></h3>
                                        </li>
                                    <?php } ?>
                                    <?php if ($review_status) { ?>
                                        <li class="tab-link" data-tab="tab-review">
                                            <h3><span><?php echo $tab_review; ?></span></h3>
                                        </li>
                                    <?php } ?>
                                </ul>
                                <div class="tab-content current" id="tab-description">
                                    <div class="rte">
                                        <div class="product-well">
                                            <div class="ba-text-fpt"><?php echo $description; ?></div>
                                            <div class="show-more">
                                                <a class="btn btn-default btn--view-more">
                                                    <span class="more-text">Xem đầy đủ</span>
                                                    <span class="less-text">Thu gọn</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-content" id="tab-specification">
                                    <div class="product-specification">
                                        <table class="table table-bordered">
                                            <?php foreach ($attribute_groups as $attribute_group) { ?>
                                                <thead>
                                                <tr>
                                                    <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                                                    <tr>
                                                        <td><?php echo $attribute['name']; ?></td>
                                                        <td><?php echo $attribute['text']; ?></td>
                                                    </tr>
                                                <?php } ?>
                                                </tbody>
                                            <?php } ?>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-12 hidden-xs hidden-sm hidden-md" style="padding-left: 0">
                    <div class="right-module">
                        <div class="module-service-details">
                            <?php if ($products) { ?>
                                <div class="module-best-sale-product">
                                    <div class="title-module_">
                                        <h2 class="title"><?php echo $text_related; ?></h2>
                                    </div>
                                    <div class="sale-off-today">
                                        <?php foreach ($products as $product) { ?>
                                        <div class="item-small">
                                            <div class="product-mini-item clearfix on-sale">
                                                <a href="<?php echo $product['href']; ?>" class="product-img">
                                                    <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>">
                                                </a>
                                                <div class="product-info">
                                                    <h3>
                                                        <a href="<?php echo $product['href']; ?>" class="product-name text3line" title="<?php echo $product['name']; ?>"><?php echo $product['name']; ?></a>
                                                    </h3>
                                                    <?php if ($product['price']) { ?>
                                                        <div class="price-box">
                                                            <?php if (!$product['special']) { ?>
                                                                <span class="price">
                                                                    <span class="price product-price"><?php echo $product['price']; ?></span>
                                                                </span>
                                                            <?php } else { ?>
                                                                <span class="price">
                                                                    <span class="price product-price"><?php echo $product['special']; ?></span>
                                                                </span>
                                                                <span class="old-price">
                                                                    <del class="sale-price"><?php echo $product['special']; ?></del>
                                                                </span>
                                                            <?php } ?>
                                                        </div>
                                                    <?php } ?>
                                                </div>
                                            </div>
                                        </div>
                                        <?php } ?>
                                    </div>
                                </div>
                            <?php } ?>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 related-product margin-top-20 xs-margin-top-0 margin-bottom-30"></div>
            </div>
        </div>
    </div>
</section>
<script>
    function validateNumber(evt) {
        var theEvent = evt || window.event;
        var key = theEvent.keyCode || theEvent.which;
        key = String.fromCharCode(key);
        var regex = /[0-9]|\./;
        if (!regex.test(key)) {
            theEvent.returnValue = false;
            if (theEvent.preventDefault) theEvent.preventDefault();
        }
        if (evt.target.value === "") {
            evt.target.value = 1;
        }
    }
    $(document).ready(function() {
        $('.thumbnails').magnificPopup({
            type:'image',
            delegate: 'a',
            gallery: {
                enabled:true
            }
        });
    });
    $("#product-thumbnail").owlCarousel({
        navigation : false,
        nav: false,
        navigationPage: false,
        navigationText : false,
        slideSpeed : 1000,
        pagination : true,
        dots: false,
        margin: 5,
        autoHeight:true,
        autoplay:false,
        autoplayTimeout:false,
        autoplayHoverPause:true,
        loop: false,

    });
</script>
<?php echo $footer; ?>
