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
<section class="main-cart-page main-container">
    <?php if ($attention) { ?>
        <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
    <?php } ?>
    <?php if ($success) { ?>
        <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
    <?php } ?>
    <?php if ($error_warning) { ?>
        <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
    <?php } ?>
    <div class="main container hidden-xs">
        <div class="cart-header">
            <div class="title-cart">
                <h1><?php echo $heading_title; ?></h1>
            </div>
        </div>
        <div class="col-main cart-content-main desktop-cart">
            <div class="cart page_cart hidden-xs">
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                    <div class="bg-scroll">
                        <div class="cart-thead">
                            <div style="width: 17%"><?php echo $column_image; ?></div>
                            <div style="width: 33%"><span class="nobr"><?php echo $column_name; ?></span></div>
                            <div style="width: 15%" class="a-center"><span class="nobr"><?php echo $column_price; ?></span></div>
                            <div style="width: 14%" class="a-center"><?php echo $column_quantity; ?></div>
                            <div style="width: 15%" class="a-center"><?php echo $column_total; ?></div>
                            <div style="width: 6%">Xoá</div>
                        </div>
                        <div class="cart-tbody">
                            <?php foreach ($products as $product) { ?>
                                <div class="item-cart productid-<?php echo $product['key']; ?>">
                                    <div style="width: 17%" class="image">
                                        <?php if ($product['thumb']) { ?>
                                        <a class="product-image" title="<?php echo $product['name']; ?>" href="<?php echo $product['href']; ?>">
                                            <img width="75" height="auto" alt="<?php echo $product['name']; ?>" src="<?php echo $product['thumb']; ?>">
                                        </a>
                                        <?php } ?>
                                    </div>
                                    <div style="width: 33%" class="a-center prd_name">
                                        <h2 class="product-name">
                                            <a class="text2line" href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                                            <?php if (!$product['stock'] && !$product['preorder']) { ?>
                                                <span class="text-danger"><?php echo $text_sold_out; ?></span>
                                            <?php } else if ($product['preorder']) { ?>
                                                <span class="text-danger"><?php echo $text_preorder; ?></span>
                                            <?php } ?>
                                            <?php if ($product['option']) { ?>
                                                <?php foreach ($product['option'] as $option) { ?>
                                                    <br />
                                                    <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
                                                <?php } ?>
                                            <?php } ?>
                                            <?php if ($product['reward']) { ?>
                                                <br />
                                                <small><?php echo $product['reward']; ?></small>
                                            <?php } ?>
                                            <?php if ($product['recurring']) { ?>
                                                <br />
                                                <span class="label label-info"><?php echo $text_recurring_item; ?></span> <small><?php echo $product['recurring']; ?></small>
                                            <?php } ?>
                                        </h2>
                                        <span class="variant-title" style="display: none;">Default Title</span>
                                    </div>
                                    <div style="width: 15%" class="a-center">
                                        <span class="item-price"> <span class="price"><?php echo $product['price']; ?></span></span>
                                    </div>
                                    <div style="width: 14%" class="a-center">
                                        <div class="input_qty_pr">
                                            <input class="variantID" type="hidden" name="variantId" value="<?php echo $product['key']; ?>">
                                            <button onclick="quality.minus(this)" data-variant="<?php echo $product['key']; ?>" class="reduced_pop items-count btn-minus" type="button">–</button>
                                            <input type="text" maxlength="12" min="1" class="input-text number-sidebar input_pop input_pop" id="qtyItem<?php echo $product['key']; ?>" size="4" value="<?php echo $product['quantity']; ?>">
                                            <button onclick="quality.add(this)" data-variant="<?php echo $product['key']; ?>" class="increase_pop items-count btn-plus" type="button">+</button>
                                        </div>
                                    </div>
                                    <div style="width: 15%" class="a-center">
                                        <span class="cart-price"> <span class="price"><?php echo $product['total']; ?></span> </span>
                                    </div>
                                    <div style="width: 6%">
                                        <a class="button remove-item remove-item-cart" title="Xóa" href="javascript:;" data-id="18614733">
                                            <span><i class="fa fa-times" aria-hidden="true"></i></span>
                                        </a>
                                    </div>
                                </div>
                            <?php } ?>
                        </div>
                    </div>
                </form>
                <div class="cart-collaterals cart-submit row">
                    <div class="totals col-sm-12 col-md-12 col-xs-12">
                        <div class="inner">
                            <table class="table shopping-cart-table-total" id="shopping-cart-totals-table">
                                <tfoot>
                                    <?php foreach ($totals as $total) { ?>
                                        <tr>
                                            <td colspan="20" class="a-right"><span><?php echo $total['title']; ?>:</span></td>
                                            <td class="a-right"><strong><span class="totals_price price"><?php echo $total['text']; ?></span></strong></td>
                                        </tr>
                                    <?php } ?>
                                </tfoot>

                            </table>
                            <ul class="checkout">
                                <li class="clearfix f-right">
                                    <button class="btn btn-white f-left" title="<?php echo $button_shopping; ?>" type="button" onclick="window.location.href='<?php echo $continue; ?>'">
                                        <span><?php echo $button_shopping; ?></span>
                                    </button>
                                    <button class="btn btn-primary button btn-proceed-checkout f-right" title="<?php echo $button_checkout; ?>" type="button" onclick="window.location.href='<?php echo $checkout; ?>'">
                                        <span><?php echo $button_checkout; ?></span>
                                    </button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script>
    var quality = {
        add: function(e){
            var p_id = e.getAttribute('data-variant');
            var result = document.getElementById('qtyItem'+p_id);
            var _value = result.value;
            if( !isNaN( _value )) result.value++;
            return false;
        },
        minus: function(e){
            var p_id = e.getAttribute('data-variant');
            var result = document.getElementById('qtyItem'+p_id);
            var _value = result.value;
            if( !isNaN( _value ) && _value > 1 ) result.value--;
            return false;
        }
    };
</script>
<?php echo $footer; ?>
