<?php echo $header; ?>
<section class="bread-crumb">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <ul class="breadcrumb" itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
                    <?php foreach ($breadcrumbs as $key=>$breadcrumb) { ?>
                        <li>
                            <?php if ($key == count($breadcrumbs) - 1) { ?>
                                <strong><span itemprop="title"><?php echo $heading_title; ?></span></strong>
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
<div class="container search-main">
    <div class="row">
        <section>
            <div class="advance-search">
                <label class="control-label" for="input-search"><?php echo $entry_search; ?></label>
                <div class="row">
                    <div class="col-sm-4">
                        <input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_keyword; ?>" id="input-search" class="form-control" />
                    </div>
                    <div class="col-sm-3">
                        <select name="category_id" class="form-control">
                            <option value="0"><?php echo $text_category; ?></option>
                            <?php foreach ($categories as $category_1) { ?>
                            <?php if ($category_1['category_id'] == $category_id) { ?>
                            <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
                            <?php } ?>
                            <?php foreach ($category_1['children'] as $category_2) { ?>
                            <?php if ($category_2['category_id'] == $category_id) { ?>
                            <option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
                            <?php } ?>
                            <?php foreach ($category_2['children'] as $category_3) { ?>
                            <?php if ($category_3['category_id'] == $category_id) { ?>
                            <option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
                            <?php } ?>
                            <?php } ?>
                            <?php } ?>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="col-sm-3">
                        <label class="checkbox-inline">
                            <?php if ($sub_category) { ?>
                            <input type="checkbox" name="sub_category" value="1" checked="checked" />
                            <?php } else { ?>
                            <input type="checkbox" name="sub_category" value="1" />
                            <?php } ?>
                            <?php echo $text_sub_category; ?></label>
                    </div>
                </div>
                <p>
                    <label class="checkbox-inline">
                        <?php if ($description) { ?>
                        <input type="checkbox" name="description" value="1" id="description" checked="checked" />
                        <?php } else { ?>
                        <input type="checkbox" name="description" value="1" id="description" />
                        <?php } ?>
                        <?php echo $entry_description; ?></label>
                </p>
                <input type="button" value="<?php echo $button_search; ?>" id="button-search" class="btn btn-primary" />
            </div>
            <?php if ($products) { ?>
            <div class="row">
                <div class="sortPagiBar">
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="box-heading relative">
                                <h1 class="title-head margin-top-0"><?php echo $text_search; ?></h1>
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
            </div>
            <section class="products-view products-view-grid">
                <div class="row">
                <?php foreach ($products as $product) { ?>
                    <div class="col-xs-5 col-sm-3 col-md-3 col-lg-2 grid-item">
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
            <div class="row">
                <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
                <div class="col-sm-6 text-right"><?php echo $results; ?></div>
            </div>
            <?php } else { ?>
                <h2><?php echo $text_search; ?></h2>
            <?php } ?>
        </section>
    </div>
</div>
<script type="text/javascript"><!--
$('#button-search').bind('click', function() {
    url = 'index.php?route=product/search';

    var search = $('.advance-search input[name=\'search\']').prop('value');

    if (search) {
        url += '&search=' + encodeURIComponent(search);
    }

    var category_id = $('#content select[name=\'category_id\']').prop('value');

    if (category_id > 0) {
        url += '&category_id=' + encodeURIComponent(category_id);
    }

    var sub_category = $('#content input[name=\'sub_category\']:checked').prop('value');

    if (sub_category) {
        url += '&sub_category=true';
    }

    var filter_description = $('#content input[name=\'description\']:checked').prop('value');

    if (filter_description) {
        url += '&description=true';
    }

    location = url;
});

$('#content input[name=\'search\']').bind('keydown', function(e) {
    if (e.keyCode == 13) {
        $('#button-search').trigger('click');
    }
});

$('select[name=\'category_id\']').on('change', function() {
    if (this.value == '0') {
        $('input[name=\'sub_category\']').prop('disabled', true);
    } else {
        $('input[name=\'sub_category\']').prop('disabled', false);
    }
});

$('select[name=\'category_id\']').trigger('change');
--></script>
<?php echo $footer; ?> 
