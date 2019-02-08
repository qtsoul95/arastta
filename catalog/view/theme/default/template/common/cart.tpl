<div class="mini-cart text-xs-center" id="cart">
    <div class="heading-cart cart-header">
        <a href="<?php echo $shopping_cart; ?>" title="Giỏ hàng" data-toggle="dropdown" data-loading-text="<?php echo $text_loading; ?>">
            <div class="icon-hotline">
                <i class="fa fa-shopping-basket" aria-hidden="true"></i>
            </div>
        </a>
        <div class="content-cart-header">
            <a class="bg_cart" href="<?php echo $cart; ?>" title="Giỏ hàng">
                (<span class="count-item count-item-pr"><?php echo $text_items; ?></span>) <?php echo "Sản phẩm"; ?>
                <span class="text-shopping-cart"><?php echo $text_shopping_cart; ?></span>
            </a>
        </div>
    </div>
    <div class="top-cart-content">
        <ul id="cart-sidebar" class="mini-products-list count_li">
            <?php if ($products || $vouchers) { ?>
                <ul class="list-item-cart">
                    <?php foreach ($products as $product) { ?>
                        <li class="item productid-<?php echo $product['key']; ?>">
                            <div class="border_list">
                                <?php if ($product['thumb']) { ?>
                                    <a class="product-image" href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>">
                                        <img alt="<?php echo $product['name']; ?>" src="<?php echo $product['thumb']; ?>" width="100">
                                    </a>
                                <?php } ?>
                                <div class="detail-item">
                                    <div class="product-details">
                                        <p class="product-name">
                                            <a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><?php echo $product['name']; ?></a>
                                        </p>
                                        <?php if ($product['option']) { ?>
                                            <?php foreach ($product['option'] as $option) { ?>
                                                <br />
                                                - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small>
                                            <?php } ?>
                                        <?php } ?>
                                        <?php if ($product['recurring']) { ?>
                                        <br />
                                        - <small><?php echo $text_recurring; ?> <?php echo $product['recurring']; ?></small>
                                        <?php } ?>
                                    </div>
                                    <div class="product-details-bottom">
                                        <div>
                                            <span class="quantity">x&nbsp;<?php echo $product['quantity']; ?></span>
                                            <span class="price"><?php echo $product['total']; ?></span>
                                        </div>
                                        <a href="javascript:;" data-id="<?php echo $product['key']; ?>" title="Xóa" class="remove-item-cart fa fa-times">&nbsp;</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                    <?php } ?>
                </ul>
                <?php foreach ($totals as $total) { ?>
                    <div class="pd">
                        <div class="top-subtotal"><?php echo $total['title']; ?>:&nbsp;<span class="price"><?php echo $total['text']; ?></span></div>
                    </div>
                <?php } ?>
                <div class="pd right_ct">
                    <a href="<?php echo $checkout; ?>" class="btn btn-primary"><span><?php echo $text_checkout; ?></span></a>
                    <a href="<?php echo $cart; ?>" class="btn btn-white"><span><?php echo $text_cart; ?></span></a>
                </div>

            <?php } else { ?>
                <div class="no-item"><p><?php echo $text_empty; ?></p></div>
            <?php } ?>
        </ul>
    </div>
</div>
