<?php echo $header; ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><div class="content_wrapper"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <div class="content border">
    <h2 class="border_heading"><?php echo $text_your_details; ?></h2>
      <div class="clearfix"></div>
      <div class="input_field_half">
      <b><?php echo $entry_firstname; ?> <span class="required">*</span></b>
      <input type="text" name="firstname" value="<?php echo $firstname; ?>" />
      <?php if ($error_firstname) { ?>
      <span class="error"><?php echo $error_firstname; ?></span>
      <?php } ?>
      </div>
      <div class="input_field_half">
      <b><?php echo $entry_lastname; ?> <span class="required">*</span></b>
      <input type="text" name="lastname" value="<?php echo $lastname; ?>" />
      <?php if ($error_lastname) { ?>
      <span class="error"><?php echo $error_lastname; ?></span>
      <?php } ?>
      </div>
      <div class="clearfix"></div>
      <div class="input_field_half">
      <b><?php echo $entry_email; ?> <span class="required">*</span></b>
      <input type="text" name="email" value="<?php echo $email; ?>" />
      <?php if ($error_email) { ?>
      <span class="error"><?php echo $error_email; ?></span>
      <?php } ?>
      </div>
      <div class="input_field_half">
      <b><?php echo $entry_telephone; ?> <span class="required">*</span></b>
      <input type="text" name="telephone" value="<?php echo $telephone; ?>" />
      <?php if ($error_telephone) { ?>
      <span class="error"><?php echo $error_telephone; ?></span>
      <?php } ?>
      </div>
      <div class="clearfix"></div>
      <div class="input_field_half">
      <b><?php echo $entry_fax; ?></b>
      <input type="text" name="fax" value="<?php echo $fax; ?>" />
      </div>
      <div class="clearfix"></div>
    </div>
    <div class="buttons">
      <div class="left"><a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a></div>
      <div class="right">
        <input type="submit" value="<?php echo $button_continue; ?>" class="button" />
      </div>
    </div>
  </form>
  <?php echo $content_bottom; ?></div></div>
<?php echo $footer; ?>