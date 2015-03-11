<!doctype html>
<html class="no-js">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Awesome T-shirts from Click 3X</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, minimal-ui" />
        <link rel="stylesheet" href="<?= base_url();?>styles/css/main.css">

        <meta property="og:url" content="<?= base_url(); ?>" /> 
        <meta property="og:title" content="Awesome T-shirts from Click 3X!" />
        <meta property="og:description" content="Customize and order your awesome T-shirt from www.click3x.com/clicktshirts" /> 
        <meta property="og:image" content="<?= base_url(); ?>images/thumbs/social_banner.jpg"/> 
        
        <link rel="icon" type="image/png" href="favicon.png">

        <!-- TYPE KIT FONT JS CODE -->
        <script src="//use.typekit.net/ali5dgb.js"></script>
        <script>try{Typekit.load();}catch(e){console.log(e);}</script>

        <script type="text/javascript">
            var router;
            var base_url = "<?=base_url(); ?>";
            var root_dir = "<?= $this->config->item('root_directory'); ?>";
            var endcoder_url = "<?= $this->config->item('encoder_url'); ?>";
        </script>

        <script src="<?= base_url();?>scripts/vendor/modernizr/modernizr.js"></script>
    </head>
        <body>

        <!-- HEADER -->
         <div id="header-container" class="header-container clearfix">   
            <?php include 'logo-svg.php'; ?>
        </div>
        <!-- END OF HEADER -->

        <section class="module content">
            <form id="giftcode" class="gift-code-form">
                <div class="txt-holder clearfix">
                    <!-- <label for="code" class="form-txt"></label> -->
                    <input name="code" id="gift-code" type="text" placeholder="YOUR CODE GOES HERE" />
                    
                    <div class="code-submit"><input type="submit" class="form-btn " value="submit" disabled /></div>
                    <span class="error"></span>
                </div>
            </form>
        </section>

        <!-- PAGE CONTAINER -->
        <div id="page-container"></div>

        <section class="module parallax parallax-2"></section>

        <!-- FOOTER -->
        <section class="module content">
            <div id="footer" class="footer clearfix">
                <div class="sxsw-logo"></div>
            </div>
        </section>
        <!-- END OF FOOTER -->

        <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
        <script>
            (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
            function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
            e=o.createElement(i);r=o.getElementsByTagName(i)[0];
            e.src='//www.google-analytics.com/analytics.js';
            r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
            ga('create','UA-3675967-14');ga('send','pageview');
        </script>

        <script src="<?= base_url();?>scripts/master.js"></script>
        <script data-main="<?= base_url();?>scripts/main" src="<?= base_url();?>scripts/vendor/require/require.min.js"></script>

        <script type="text/javascript">
            var body = document.body,
            timer;

            window.addEventListener('scroll', function() {

              clearTimeout(timer);
              if(!body.classList.contains('disable-hover')) {
                body.classList.add('disable-hover')
              }
              
              timer = setTimeout(function(){
                body.classList.remove('disable-hover')
              },500);
            }, false);


            // IE PLACEHOLDER
            // CHECK IF PLACEHOLDER IS SUPPORTED
            function isPlaceholderSupported() 
            {
                var input = document.createElement("input");
                return ('placeholder' in input); 
            }

            function add_placeholder (id, placeholder)
            {
                var el = document.getElementById(id);
                el.placeholder = placeholder;
             
                el.onfocus = function ()
                {
                    if(this.value == this.placeholder)
                    {
                        this.value = '';
                        el.style.cssText  = '';
                    }
                };
             
                el.onblur = function ()
                {
                    if(this.value.length == 0)
                    {
                        this.value = this.placeholder;
                        el.style.cssText = 'color:#ee2a24;';
                    }
                };
             
                el.onblur();
            }
                 
                // Add right before </body> or inside a DOMReady wrapper
            if (isPlaceholderSupported() === false) {
                add_placeholder('gift-code', 'YOUR CODE GOES HERE');
            }

        </script>

</body>
</html>