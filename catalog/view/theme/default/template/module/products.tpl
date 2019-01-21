<div class="slider-products hidden-xs">
    <div class="row">
        <div class="border-bottom-title clearfix">

        </div>
        <div class="col-xs-6 title-top-menu">
            <h3 class="category-name">
                <a href="#" class="collection-name-title" title="<?php echo !empty($title) ? $title : $heading_title; ?>"><?php echo !empty($title) ? $title : $heading_title; ?></a>
            </h3>
        </div>
        <div class="col-xs-6 text-right">
            <a href="#" class="see-more-products" title="<?php echo !empty($title) ? $title : $heading_title; ?>">
                <?php echo "Xem toàn bộ sản phẩm"; ?>
                <span class="glyphicon glyphicon-menu-right" style="font-size: 11px;"></span>
            </a>
        </div>
    </div>
    <div class="product-items">
        <div class="owl-carousel product-owl-carousel">
            <?php foreach ($products as $product) { ?>
                <div class="item product-item">
                    <a href="<?php echo $product['href']; ?>" class="product-link" title="<?php echo $product['name']; ?>">
                        <div class="product-box">
                            <div class="product-thumbnail">
                                <div style="background-image: url(<?php echo $product['thumb']; ?>)"></div>
                            </div>
                            <div class="product-info a-left">
                                <div class="product-name">
                                    <div><?php echo $product['name']; ?></div>
                                </div>
                                <div class="h-space"></div>
                                <div class="product-price a-left">
                                    <?php if (!$product['special']) { ?>
                                        <div class="special-price"><?php echo $product['price']; ?></div>
                                    <?php } else { ?>
                                        <div class="special-price"><?php echo $product['special']; ?></div>
                                        <div class="old-price"><?php echo $product['price']; ?></div>
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            <?php } ?>
        </div>
    </div>
</div>
<script>
    if($(window).width() > 767) {
        $('.product-owl-carousel').each(function(){
            $(this).owlCarousel({
                items: 5,
                slideBy: 5,
                dots: false,
                margin: 10,
                nav: true,
                navText: ["<span class='glyphicon glyphicon-menu-left'></span>", "<span class='glyphicon glyphicon-menu-right'></span>"],
            });
        });
    }
</script>
