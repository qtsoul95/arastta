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
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                            <tr>
                                <td class="text-center"><?php echo $column_image; ?></td>
                                <td class="text-left"><?php echo $column_name; ?></td>
                                <td class="text-left"><?php echo $column_model; ?></td>
                                <td class="text-left"><?php echo $column_quantity; ?></td>
                                <td class="text-right"><?php echo $column_price; ?></td>
                                <td class="text-right"><?php echo $column_total; ?></td>
                            </tr>
                            </thead>
                            <tbody>
                            <?php foreach ($products as $product) { ?>
                                <tr>
                                    <td class="text-center"><?php if ($product['thumb']) { ?>
                                            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
                                        <?php } ?></td>
                                    <td class="text-left"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
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
                                        <?php } ?></td>
                                    <td class="text-left"><?php echo $product['model']; ?></td>
                                    <td class="text-left"><div class="input-group btn-block" style="max-width: 200px;">
                                            <input type="text" name="quantity[<?php echo $product['key']; ?>]" disabled value="<?php echo $product['quantity']; ?>" size="1" class="form-control" />
                                            <span class="input-group-btn">
<!--                    <button type="submit" data-toggle="tooltip" title="--><?php //echo $button_update; ?><!--" class="btn btn-primary"><i class="fa fa-refresh"></i></button>-->
                    <button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger" onclick="cart.remove('<?php echo $product['key']; ?>');"><i class="fa fa-times-circle"></i></button></span></div></td>
                                    <td class="text-right"><?php echo $product['price']; ?></td>
                                    <td class="text-right"><?php echo $product['total']; ?></td>
                                </tr>
                            <?php } ?>
                            <?php foreach ($vouchers as $vouchers) { ?>
                                <tr>
                                    <td></td>
                                    <td class="text-left"><?php echo $vouchers['description']; ?></td>
                                    <td class="text-left"></td>
                                    <td class="text-left"><div class="input-group btn-block" style="max-width: 200px;">
                                            <input type="text" name="" value="1" size="1" disabled="disabled" class="form-control" />
                                            <span class="input-group-btn"><button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger" onclick="voucher.remove('<?php echo $vouchers['key']; ?>');"><i class="fa fa-times-circle"></i></button></span></div></td>
                                    <td class="text-right"><?php echo $vouchers['amount']; ?></td>
                                    <td class="text-right"><?php echo $vouchers['amount']; ?></td>
                                </tr>
                            <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </form>
                <div class="cart-collaterals cart-submit row">
                    <?php if (false) { ?>
                        <?php // $coupon || $voucher || $reward || $shipping ?>
                        <h2><?php echo $text_next; ?></h2>
                        <p><?php echo $text_next_choice; ?></p>
                        <div class="panel-group" id="accordion"><?php echo $coupon; ?><?php echo $voucher; ?><?php echo $reward; ?><?php echo $shipping; ?></div>
                    <?php } ?>
                    <br />
                    <div class="totals col-sm-12 col-md-12 col-xs-12">
                        <div class="inner">
                            <table class="table table-bordered">
                                <?php foreach ($totals as $total) { ?>
                                    <tr>
                                        <td class="text-right"><strong><?php echo $total['title']; ?>:</strong></td>
                                        <td class="text-right"><?php echo $total['text']; ?></td>
                                    </tr>
                                <?php } ?>
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
<?php echo $footer; ?>
