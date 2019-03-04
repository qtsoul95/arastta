<?php echo $header; ?>
<section class="bread-crumb">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <ul class="breadcrumb" itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
                    <?php foreach ($breadcrumbs as $key => $breadcrumb) { ?>
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
<div class="container categories-collections">
    <div class="row">
        <?php if ($products) { ?>
            <section class="main_container collection col-lg-9 col-lg-push-3">
                <div class="category-products products">
                    <div class="sortPagiBar">
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-6">
                                <div class="box-heading relative">
                                    <h1 class="title-head margin-top-0"><?php echo $heading_title; ?></h1>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-6 text-xs-left text-sm-right">
                                <div class="bg-white clearfix f-right">
                                    <div class="view-mode">
                                        <a href="javascript:;" data-view="list">
                                            <b class="btn button-view-mode view-mode-list">
                                                <i class="fa fa-th-list" aria-hidden="true"></i>
                                            </b>
                                            <span>Danh sách</span>
                                        </a>
                                        <a href="javascript:;" data-view="grid">
                                            <b class="btn button-view-mode view-mode-grid active">
                                                <i class="fa fa-th" aria-hidden="true"></i>
                                            </b>
                                            <span>Lưới</span>
                                        </a>
                                    </div>
                                    <div id="sort-by">
                                        <select id="input-sort" class="form-control" onchange="location = this.value;">
                                            <?php foreach ($sorts as $sorts) { ?>
                                                <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                                                    <option value="<?php echo $sorts['href']; ?>"
                                                            selected="selected"><?php echo $sorts['text']; ?></option>
                                                <?php } else { ?>
                                                    <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                                                <?php } ?>
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <section class="products-view products-view-grid">
                        <div class="row">
                            <?php foreach ($products as $product) { ?>
                                <div class="col-xs-6 col-sm-4 col-md-3 col-lg-3 grid-item">
                                    <a href="<?php echo $product['href']; ?>" class="product-link"
                                       title="<?php echo $product['name']; ?>">
                                        <div class="product-box">
                                            <div class="product-thumbnail">
                                                <div style="background-image: url(<?php echo $product['thumb']; ?>)"></div>
                                                <!--  Tag giá sốc -->
                                                <!-- End tag giá sốc -->
                                                <?php if ($product['special']) { ?>
                                                    <div class="tagmakm_sale makm">
                                                        <div class="f-left codekm">
                                                            <div class="codekm_1">
                                                                Nhập mã<br>
                                                            </div>
                                                            <div class="codekm_2">
                                                                CTKM001
                                                            </div>
                                                        </div>
                                                        <div class="f-right price_km">
                                                            -200.000 Đ
                                                        </div>
                                                    </div>
                                                <?php } ?>
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
                    </section>
                </div>
            </section>
            <aside class="dqdt-sidebar sidebar left left-content col-lg-3 col-lg-pull-9">
                <?php echo $column_left; ?>
            </aside>
            <div class="row" style="padding: 15px;">
                <div class="col-sm-6 a-left"><?php echo $pagination; ?></div>
                <div class="col-sm-6 a-right"><?php echo $results; ?></div>
            </div>
        <?php } ?>
        <?php if (!$categories && !$products) { ?>
            <p><?php echo $text_empty; ?></p>
            <div class="buttons">
                <div class="pull-right"><a href="<?php echo $continue; ?>"
                                           class="btn btn-primary"><?php echo $button_continue; ?></a></div>
            </div>
        <?php } ?>
        <?php echo $content_bottom; ?></div>
</div>
</div>
<?php echo $footer; ?>
