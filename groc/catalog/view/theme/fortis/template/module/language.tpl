<?php if (count($languages) > 1) { ?>
<div class="language_current only_desktop">
<?php foreach ($languages as $language) { ?>
    <?php if ($language['code'] == $language_code) { ?>
    <img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" />
    <?php echo $text_language; ?>: 
    <?php echo $language['name']; ?>
    <?php } ?>
    <?php } ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
  <div id="language" class="top_header_drop_down">
    <?php foreach ($languages as $language) { ?>
    <?php if ($language['code'] == $language_code) { ?>
    <a class="language_link" onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $(this).parent().parent().submit();">
    <img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" />
    <b><?php echo $language['name']; ?></b></a>
    <?php } else { ?>
    <a class="language_link" onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $(this).parent().parent().submit();">
    <img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" />
    <?php echo $language['name']; ?></a>
    <?php } ?>
    <?php } ?>
    <input type="hidden" name="language_code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
  </div>
</form>
</div>
<div class="language_current up_to_tablet">
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
  <div class="language"><?php echo $text_language; ?>:&nbsp;
    <?php foreach ($languages as $language) { ?>
    <img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $(this).parent().parent().submit();" />
    <?php } ?>
    <input type="hidden" name="language_code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
  </div>
</form>
</div>
<?php } ?>