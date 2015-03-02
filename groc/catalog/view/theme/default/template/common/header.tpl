<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<!-- pop up dialog box -->

<script type="text/javascript">
  $('#myModal').modal('show');
</script>
<!-- pop up close -->
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body class="<?php echo $class; ?>">
<header>
<nav id="top"></nav>
  <div class="container">
    <div class="row">
      <div class="col-sm-2" style="padding-right: 0px">
        <a href="">
          <div class="logo" style="display:block">
          </div>
        </a>
      </div>
      <!-- right column + 2 rows -->
      <div class="col-sm-10" style="margin-bottom:10px;">
        <div class="row-fluid">
          <div class="box">
            <!-- top links/account/wishlist -->
            <div id="top-links" class="nav">
              <ul class="list-inline">
                <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>

                <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>

                <li>
                  <a href="<?php echo $shopping_cart; ?>" >
                    <?php echo $text_shopping_cart; ?>
                  </a>
                </li>
                <?php if ($logged) { ?>
                  <li class="dropdown pull-right">
                    <a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="fa fa-user"></i> 
                      <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> 
                      <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-right dropmenu"> 
                      <li>
                        <a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?>
                        </a>
                      </li>

                      <li>
                        <a href="<?php echo $shopping_cart; ?>" ><?php echo $text_shopping_cart; ?>
                        </a>
                      </li>
                      
                      <li>
                        <a href="<?php echo $account; ?>"><?php echo $text_account; ?>
                        </a>
                      </li>
                      
                      <li>
                        <a href="<?php echo $order; ?>"><?php echo $text_order; ?>
                        </a>
                      </li>
                      <li>
                        <a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?>
                        </a>
                      </li>
                      <li>
                        <a href="<?php echo $logout; ?>"><?php echo $text_logout; ?>
                        </a>
                      </li>
                    </ul>
                  </li>
                  <?php } else { } ?>
              </ul>
            </div>
          </div>
        </div>

        <div class="row-fluid">
          <div class="box">
            <!-- hot search box -->
            <ul class="search_row">
              <li class="col-sm-8" style="padding:0px">
                  <?php echo $search; ?>
              </li>
              <li class="col-sm-2 login" >
                <a href="<?php echo $login; ?>" title="<?php echo $text_login; ?>">
                <i class="fa fa-lock"></i> 
                <span class="hidden-xs hidden-sm hidden-md">
                  <?php echo $text_login; ?>
                </span> 
              </a>
              </li>
              <li id="checkouts" class="col-sm-2 pull-left">
                <a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"> 
                <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?>
                </span>
                <i class="fa fa-arrow-circle-o-right"></i>
              </a>
              </li>
              
            </ul>
          </div>
        </div>
      </div>

    </div>
  </div>
  <?php if ($categories) { ?>
<div class="container">
  <nav id="menu" class="navbar" >
    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
          <div class="dropdown-menu">
            <div class="dropdown-inner">
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              <ul class="list-unstyled">
                <?php foreach ($children as $child) { ?>
                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                <?php } ?>
              </ul>
              <?php } ?>
            </div>
            <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
        </li>
        <?php } else { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
    </div>
  </nav>
</div>
<?php } ?>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
</header>
