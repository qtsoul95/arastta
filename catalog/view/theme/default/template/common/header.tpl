<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo $title; ?></title>
    <base href="<?php echo $base; ?>"/>
    <?php if ($description) { ?>
        <meta name="description" content="<?php echo $description; ?>"/>
    <?php } ?>
    <?php if ($keywords) { ?>
        <meta name="keywords" content="<?php echo $keywords; ?>"/>
    <?php } ?>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <?php if ($icon) { ?>
        <link href="<?php echo $icon; ?>" rel="icon"/>
    <?php } ?>
    <?php foreach ($metas as $meta) { ?>
        <meta name="<?php echo $meta['name']; ?>" content="<?php echo $meta['content']; ?>"/>
    <?php } ?>
    <?php foreach ($links as $link) { ?>
        <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>"/>
    <?php } ?>
    <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen"/>
    <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/jquery/owl-carousel/owl.carousel.js" type="text/javascript"></script>
    <script src="catalog/view/theme/default/javascript/main.js" type="application/javascript"></script>
    <link rel="stylesheet" href="catalog/view/javascript/jquery/owl-carousel/owl.carousel.css">
    <link rel="stylesheet" href="catalog/view/javascript/jquery/owl-carousel/owl.transitions.css">
    <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="//fonts.googleapis.com/css?family=Roboto:400,500,700" rel="stylesheet" type="text/css">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700,800" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700&amp;subset=vietnamese" rel="stylesheet">
    <!--    <link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">-->
    <link href="catalog/view/theme/default/stylesheet/custom.stylesheet.css" rel="stylesheet">
    <?php foreach ($styles as $style) { ?>
        <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>"
              media="<?php echo $style['media']; ?>"/>
    <?php } ?>
    <?php if ($style_declarations) { ?>
        <?php foreach ($style_declarations as $style_declaration) { ?>
            <?php if ($style_declaration['add_tag']) { ?>
                <style type="<?php echo $style_declaration['type']; ?>">
            <?php } ?>
        <?php echo $style_declaration['content']; ?>
        <?php if ($style_declaration['add_tag']) { ?>
            </style>
        <?php } ?>
        <?php } ?>
    <?php } ?>
    <?php if ($theme_config) { ?>
        <style type="text/css">
            <?php if ($theme_config->get('menu_show_all')) { ?>
            #menu .see-all {
                display: none !important;
            }

            <?php } ?>
            <?php if ($theme_config->get('refine_shearch_show')) { ?>
            body[class*="product-category"] #content.col-sm-12 h3,
            body[class*="product-category"] #content.col-sm-12 h3 + .row,
            body[class*="product-category"] #content.col-sm-9 h3,
            body[class*="product-category"] #content.col-sm-9 h3 + .row,
            body[class*="product-category"] #content.col-sm-6 h3,
            body[class*="product-category"] #content.col-sm-6 h3 + .row {
                display: none;
            }

            <?php } ?>
        </style>
    <?php } ?>
    <script src="catalog/view/javascript/common.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/arastta.js" type="text/javascript"></script>
    <?php foreach ($scripts as $script) { ?>
        <script src="<?php echo $script; ?>" type="text/javascript"></script>
    <?php } ?>
    <?php if ($script_declarations) { ?>
        <?php foreach ($script_declarations as $script_declaration) { ?>
            <?php if ($script_declaration['add_tag']) { ?>
            <script type="<?php echo $script_declaration['type']; ?>">
                <?php } ?>
                <?php echo $script_declaration['content']; ?>
                <?php if ($script_declaration['add_tag']) { ?>
            </script>
        <?php } ?>
        <?php } ?>
    <?php } ?>
    <?php echo $google_analytics; ?>
</head>
<body class="<?php echo $class; ?>">
<header class="header">
    <div class="topbar">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-7 hidden-sm hidden-xs">
                    <ul class="topbar-left hidden-sm hidden-xs">
                        <li><a><?php echo "Mở cửa: 8h00 - 22h00, thứ 2 - CN hàng tuần" ?></a></li>
                    </ul>
                </div>
                <div class="col-lg-6 col-md-5 col-sm-12 d-list col-xs-12 topbar-right">
                    <div class="list-inline a-center f-right">
                        <ul>
                            <li class="login-content">
                                <!-- Account_options-->
                            </li>
                            <li class="hidden-xs"></li>
                            <li class="hidden-xs"></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="content-header f-left">
        <div class="container">
            <div class="row">
                <div class="nav-header">
                    <div class="header-main">
                        <div class="menu-bar-h nav-mobile-button hidden-md hidden-lg">
                            <a href="#">
                                <img src="catalog/view/theme/default/image/i_menubar.png" alt="menu bar">
                            </a>
                        </div>
                        <div class="col-lg-3 col-md-3">
                            <div class="logo">
                                <a href="/">
                                    <img src="https://bizweb.dktcdn.net/100/311/807/themes/701136/assets/logo.png?1546939850958"
                                         alt="logo">
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-5 col-xs-12 col-sm-12">
                            <div class="header-left header-search">
                                <form action="/search" method="get" class="input-group search-bar" role="search">
                                    <input type="text" name="query" autocomplete="off"
                                           placeholder="Tìm kiếm sản phẩm..." class="input-group-field">
                                    <span class="input-group-btn">
                                        <button type="submit" class="btn icon-fallback-text">
                                            <i class="fa fa-search"></i>
                                        </button>
                                    </span>
                                </form>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-xs-12 no-padding-left">
                            <div class="header-right">
                                <div class="hotline hidden-sm">
                                    <div class="icon-hotline">
                                        <i class="fa fa-phone" aria-hidden="true"></i>
                                    </div>
                                    <div class="content-hotline">
                                        <a href="tel:<?php echo $telephone; ?>"><?php echo $telephone; ?></a>
                                        <span><?php echo "Hotline đặt hàng" ?></span>
                                    </div>
                                </div>
                                <div class="top-cart f-right">
                                    <?php echo $cart; ?>
                                </div>
                                <div class="top-cart f-right hidden">
                                    <div class="mini-cart text-xs-center">
                                        <div class="heading-cart">
                                            <a class="bg_cart" href="<?php echo $shopping_cart; ?>" title="Giỏ hàng">
                                                <i class="ion-android-cart"></i>
                                                <span class="count-item count-item-pr">0</span>
                                            </a>
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
    <div class="nav-menu-header hidden-xs hidden-sm">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 col-mega hidden-sm hidden-xs">
                    <div class="menu-mega">
                        <?php if ($categories) { ?>
                            <div class="title-menu">
                                <span class="title_"><?php echo $text_category; ?></span>
                                <span class="nav-button">
                                    <span><i class="fa fa-bars" aria-hidden="true"></i></span>
                                </span>
                            </div>
                            <div class="list-menu-header menu-all-site col-lg-3 col-sm-3">
                                <ul class="ul_menu site-nav-vetical">
                                    <?php foreach ($categories as $category) { ?>
                                        <?php if ($category['children']) { ?>
                                            <li class="nav_item lv1 li_check">
                                            <a href="<?php echo $category['href']; ?>"
                                               title="<?php echo $category['name']; ?>">
                                                <?php echo $category['name']; ?>
                                                <i class="fa fa-angle-right"></i>
                                            </a>
                                            <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                                                <ul class="ul_content_right_1 row">
                                                    <?php foreach ($children as $child) { ?>
                                                        <li class="nav_item lv2 col-lg-3 col-md-3">
                                                            <a href="<?php echo $child['href']; ?>"
                                                               title="<?php echo $child['name']; ?>"><?php echo $child['name']; ?></a>
                                                        </li>
                                                    <?php } ?>
                                                </ul>
                                            <?php } ?>
                                            <?php if ($category['href'] != '#') { ?>
                                                <li class="nav_item lv2 col-lg-3 col-md-3 xemthem">
                                                    <a href="<?php echo $category['href']; ?>"
                                                       title="<?php echo $text_all; ?> <?php echo $category['name']; ?>">
                                                        <?php echo $text_all; ?><?php echo $category['name']; ?>
                                                    </a>
                                                </li>
                                            <?php } ?>
                                            </li>
                                        <?php } else { ?>
                                            <li class="nav_item lv1 li_check">
                                                <a href="<?php echo $category['href']; ?>"
                                                   title="<?php echo $category['name']; ?>">
                                                    <?php echo $category['name']; ?>
                                                </a>
                                            </li>
                                        <?php } ?>
                                    <?php } ?>
                                </ul>
                            </div>
                        <?php } ?>
                    </div>
                </div>
                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                    <div class="bg-header-nav hidden-xs hidden-sm">
                        <div>
                            <div class="row row-noGutter-2">
                                <nav class="header-nav">
                                    <ul class="item-big">
                                        <li class="nav-item active">
                                            <a href="/" class="a-img">
                                                <span><?php echo "Trang chủ"; ?></span>
                                                <span class="label_"><i class="label"></i></span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="a-img">
                                                <span><?php echo "Giới thiệu"; ?></span>
                                                <span class="label_"><i class="label"></i></span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="a-img">
                                                <span><?php echo "Sản phẩm"; ?></span>
                                                <span class="label_"><i class="label hot">hot</i></span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="a-img">
                                                <span><?php echo "Tin tức"; ?></span>
                                                <span class="label_"><i class="label new">new</i></span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="a-img">
                                                <span><?php echo "Liên hệ"; ?></span>
                                                <span class="label_"><i class="label"></i></span>
                                            </a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
