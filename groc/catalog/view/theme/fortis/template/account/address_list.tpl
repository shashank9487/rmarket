<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <div class="content border">
  <h2 class="border_heading"><?php echo $text_address_book; ?></h2>
  <?php foreach ($addresses as $result) { ?>
    <div class="address_list">
       <a href="<?php echo $result['delete']; ?>" class="button mobile_hide"><?php echo $button_delete; ?></a>
       <a href="<?php echo $result['update']; ?>" class="button mobile_hide"><?php echo $button_edit; ?></a> 
       <?php echo $result['address']; ?><br />
       <a href="<?php echo $result['update']; ?>" class="up_to_mobile">[ <?php echo $button_edit; ?> ]</a>
       <a href="<?php echo $result['delete']; ?>" class="up_to_mobile">[ <?php echo $button_delete; ?> ]</a><br />
     </div>
  <?php } ?>
  </div>
  <div class="buttons">
    <div class="left"><a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a></div>
    <div class="right"><a href="<?php echo $insert; ?>" class="button"><?php echo $button_new_address; ?></a></div>
  </div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>