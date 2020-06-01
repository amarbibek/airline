<link rel="stylesheet" href="photo.css"/>
<script type="text/javascript" script src="jquery-2.1.4.min (1).js"></script>
<script type="text/javascript" script src="jquery.cycle.all.js"></script>
<script type="text/javascript">
$('#slider').cycle({
	fx:			'scrollHorz',
	timeout:		2000,
	next:"#next",
	prev:"#prev",
	pager:"#pager"
	
	
	
	});
</script>
<div id="hero">
					<div id="pager"></div>
					<div id="next"></div>
					<div id="prev"></div>
					<div id="slider">
						<div class="slider-items">
						<img src="img\nepal.jpg"/>
						</div>

						<div class="slider-items">
						<img src="img\lukla.jpg"/>
						</div>


						<div class="slider-items">
						<img src="img\sun.jpg"/>
						</div>


						<div class="slider-items">
						<img src="img\cloud.png"/>
						</div>


						<div class="slider-items">
						<img src="img\india.jpg"/>
						</div>


						<div class="slider-items">
						<img src="img\f.jpg"/>
						
						</div>



					</div>
</div>