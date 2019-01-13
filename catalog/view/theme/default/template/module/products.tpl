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
                <div class="item">
                    <a href="<?php echo $product['href']; ?>" class="product-link" title="<?php echo $product['name']; ?>">
                        <img src="<?php echo $product['thumb']; ?>" style="width: auto;" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" />
                    </a>
                    <div>
                        <h3 class="product-name"><?php echo $product['name']; ?></h3>
                        <div class="product-price"><?php echo $product['price']; ?></div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</div>
<script>
    if($(window).width() > 767) {
        $('.product-owl-carousel').each(function(){
            $(this).owlCarousel({
                items: 6,
                slideBy: 6,
                dots: false,
                margin: 10,
                nav: true,
                navText: ["<span class='glyphicon glyphicon-menu-left'></span>", "<span class='glyphicon glyphicon-menu-right'></span>"],
            });
        });
    }
</script>
