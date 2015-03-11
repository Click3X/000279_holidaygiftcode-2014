define([
    'pages/page',
    // 'modules/question_view',
    // 'modules/navigation_view',
    'text!template/home.php'
], function (PageTemplate, T) {
    'use strict';

    var Home = PageTemplate.extend({
        template: _.template( T ),
        activate:function(){
            var _t = this;

            if(/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)  ) {
                $('.code-submit').children().attr('disabled', false);
                $('.code-submit').css('opacity', '1');
                } else {             

                    $('#gift-code').keyup(function(){
                        
                            if($(this).val().length !=0) {
                                
                                $(this).next().css('opacity', '1');
                                $('.code-submit').children().attr('disabled', false);                
                            } else {
                                $(this).next().css('opacity', '0.6'); 
                                $('.code-submit').children().attr('disabled', true);      
                            }
                   
                    });

                }
        },
    });

    (function() {
      var myAnimation = new DrawFillSVG({
        elementId: "svg"
      });
    })();

    return Home;
});
