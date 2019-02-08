<?php echo $header; ?>
<div class="container">
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
    <div class="row"><?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
            <h1><?php echo $heading_title; ?></h1>
            <?php echo $description; ?><?php echo $content_bottom; ?></div>
        <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?> 
