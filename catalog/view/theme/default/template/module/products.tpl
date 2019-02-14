<section>
    <div class="section-base">
        <div class="container">
            <div class="row">
                <div class="clearfix">
                    <div class="col-md-12">
                        <div class="border-bottom-title clearfix"></div>
                        <div class="title-top-menu">
                            <h3 class="category-name">
                                <a href="<?php echo $category_href ?>" class="collection-name-title" title="<?php echo !empty($title) ? $title : $heading_title; ?>"><?php echo !empty($title) ? $title : $heading_title; ?></a>
                            </h3>
                            <ul class="clearfix">
                                <li>
                                    <a href="<?php echo $category_href ?>" class="more-view" title="<?php echo !empty($title) ? $title : $heading_title; ?>">
                                        <?php echo "Xem toàn bộ sản phẩm"; ?>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="content-sec clearfix">
                            <div class="products owl-carousel" data-nav="true" data-lg-items="5" data-md-items="4" data-sm-items="3" data-xs-items="2" data-margin="15">
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
                </div>
            </div>
        </div>
    </div>
</section>
