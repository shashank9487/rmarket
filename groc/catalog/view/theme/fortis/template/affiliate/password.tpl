<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><div class="content_wrapper"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <div class="content border">
    <h2 class="border_heading"><?php echo $text_password; ?></h2>
      <div class="clearfix"></div>
       <div class="input_field_half">
       <b><?php echo $entry_password; ?> <span class="required">*</span></b>
          <input type="password" name="password" value="<?php echo $password; ?>" />
            <?php if ($error_password) { ?>
            <span class="error"><?php echo $error_password; ?></span>
            <?php } ?>
            </div>
         <div class="input_field_half">
         <b><?php echo $entry_confirm; ?> <span class="required">*</span></b>
         <input type="password" name="confirm" value="<?php echo $confirm; ?>" />
            <?php if ($error_confirm) { ?>
            <span class="error"><?php echo $error_confirm; ?></span>
            <?php } ?>
            </div>
        <div class="clearfix"></div>
    </div>
    <div class="buttons">
      <div class="left"><a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a></div>
      <div class="right"><input type="submit" value="<?php echo $button_continue; ?>" class="button" /></div>
    </div>
  </form>
  <?php echo $content_bottom; ?></div></div>
<?php echo $footer; ?>