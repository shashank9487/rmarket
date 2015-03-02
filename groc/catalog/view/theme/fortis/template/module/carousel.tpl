<div class="carousel_module">
	<a id="carousel_prev" class="carousel_arrow_prev">prev</a>
    <a id="carousel_next" class="carousel_arrow_next">next</a>
	<div id="carousel<?php echo $module; ?>">
	<?php foreach ($banners as $banner) { ?>
    <div class="carousel_item"><a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></a></div>
    <?php } ?>
	</div>
	<div class="clearfix"></div>
</div>
<script type="text/javascript">
	$('#carousel<?php echo $module; ?>').carouFredSel( {
	width	: "100%",
	prev: '#carousel_prev',
	next: '#carousel_next',
	auto:false,
	swipe: {
			onMouse: true,
			onTouch: true,
			duration:800
			},
	scroll: <?php echo $scroll; ?>
}).parent().css("margin", "auto");
</script>