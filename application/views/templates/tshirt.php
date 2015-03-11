<!-- <div class="spinner">
  <div class="cube cube0"></div>
  <div class="cube cube1"></div>
  <div class="cube cube2"></div>
  <div class="cube cube3"></div>
</div> -->
<div class="page-content">
	<section class="path-section">

	<div class="theader-container">
		<h1 id="title-message">Choose Your Click 3X T-Shirt</h1>
	</div>

	<!-- CHOOSE COLOR -->
	<div class="form-txt">Choose a color</div>
	<div class="color-container">
		<div class="color-wrapper">
			<div class="color-text">WHITE</div>
			<div class="twhite-btn color-btn color-selected" id="white"></div>
		</div>	
		<div class="color-wrapper">
			<div class="color-text">BLACK</div>
			<div class="tblack-btn color-btn" id="black"></div>
		</div>
	</div>

	<!-- CHOOSE DESIGN -->
	<div class="form-txt">Choose a design</div>
	<!-- NEW T-SHRIT SELECTION -->

	<div class="design-wrapper">
		<ul class="tshirts-container">
			<li>							
				
				<img data-img-id="click1" class="black-tshirts tshirt-selection" id="tshirt-design-1-black" src="images/thumbs/tshirts/new/click1-black.jpg" style="opacity: 0">
				<img data-img-id="click1" class="white-tshirts tshirt-selection" id="tshirt-design-1-white" src="images/thumbs/tshirts/new/click1-white.jpg" >
				<div class="hover-layer"></div>
			</li><li>
										
				<img data-img-id="click2" class="black-tshirts tshirt-selection" id="tshirt-design-2-black" src="images/thumbs/tshirts/new/click2-black.jpg" style="opacity: 0">
				<img data-img-id="click2" class="white-tshirts tshirt-selection" id="tshirt-design-2-white" src="images/thumbs/tshirts/new/click2-white.jpg">
				<div class="hover-layer"></div>	
				
			</li><li>			
											
				<img data-img-id="sxsw1" class="black-tshirts tshirt-selection" id="tshirt-design-3-black" src="images/thumbs/tshirts/new/sxsw1-black.jpg" style="opacity: 0">
				<img data-img-id="sxsw1" class="white-tshirts tshirt-selection" id="tshirt-design-3-shite" src="images/thumbs/tshirts/new/sxsw1-white.jpg">
				<div class="hover-layer"></div>
				
			</li><li id="mouth-container">			
					
				<img data-img-id="sxsw2" class="white-tshirts tshirt-selection" id="tshirt-design-4-white" src="images/thumbs/tshirts/new/sxsw2-white.jpg">
				<!-- <img data-img-id="sxsw2" class="black-tshirts tshirt-selection" id="tshirt-design-4-black" src="images/thumbs/tshirts/new/sxsw2-black.jpg"> -->
				<div id="last-layer" class="hover-layer"></div>		
				
			</li>
		</ul>
	</div>
	<!-- END OF NEW TSHIRT SELECTION -->

	<span class="unisex-txt">* All t-shirts are unisex.</span>

	<!-- TSHIRT ORDER FORM -->
	<div id="form-container">
		<form id="order-form" class="tshirt-form">
			<input name="ref_client_id" id="client-id" type="hidden" value="<%= id %>"/>
			<input class="design" name="design" id="tshirt-design" type="hidden"/>
			<div class="form-txt">Pick a size</div>
			<div class="tshirt-size-holder clearfix">
				<input type="radio" name="size" id="sml" value="sml">
				<label for="sml" class="form-btn">SM</label>
				<input type="radio" name="size" id="med" value="med" checked>
				<label for="med" class="form-btn">MD</label>
				<input type="radio" name="size" id="lrg" value="lrg">
				<label for="lrg" class="form-btn">LG</label>
				<input type="radio" name="size" id="xlr" value="xlr">
				<label for="xlr" class="form-btn">XL</label>
			</div>
			<div class="form-txt">Confirm your mailing info</div>
			<div class="txt-holder clearfix address-container">

				<label for="name" class="form-txt color">name</label>
				<input type="text" name="name" id="name" class="validate" />

				<label for="address" class="form-txt color">address</label>
				<input type="text" name="address" id="address" class="validate" />

				<label for="city" class="form-txt color">city</label>
				<input type="text" name="city" id="city" class="validate" />

				<div class="state-zip-holder clearfix">
					<!-- <div class="state-holder clearfix"> -->
						<div class="input-inner">
							<label for="state" class="form-txt">state</label>
							<select class="state validate" name="state" >   
								<option value="" selected disabled>Please Select</option>
								<?php foreach ($states as $key => $state): ?>
								<option autocomplete="off" value="<?php echo $state->state_abbr; ?>"><?php echo $state->state_name; ?></option>
								<?php endforeach; ?>
							</select>
						</div>
					<!-- </div> -->
					<!-- <div class="zip-holder"> -->
						<div class="input-inner">
							<label for="zip" class="form-txt zip">zip code</label>
							<input type="text" name="zip" id="zip" class="validate"/>
						</div>
					<!-- </div> -->
				</div>
				<span class="error"></span>
				<input type="submit" class="form-btn address-submit" value="submit">
			</div>
		</form>
	</div>
</section>
</div>