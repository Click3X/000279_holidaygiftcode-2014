/*global define*/

define([
    'pages/page',
    'text!template/tshirt.php'
], function (PageTemplate, T) {
    'use strict';

    var TShirt = PageTemplate.extend({
        template: _.template( T ),
        // slider:null,
        form_container:null,
        order_form:null,
        slide_input:null,
        error_span:null,

        append:function(){
            if( this.session.attributes.client.attributes.id ){
                this.$el.html( this.template( this.session.attributes.client.attributes ) );
            }else{
               this.$el.html( "<h5>Sorry, that's not a valid gift code.</h5>");
               //this.$el.html( this.template( {id:"0", first_name:"", address:"", city:"", state:"", zip:""} ) );
            }
        },
        activate:function(){

            var _t = this,
            selectedImgId,
            colorSet;

            _t.form_container       = _t.$el.find("#form-container").eq(0);
            _t.order_form           = _t.$el.find("form#order-form").eq(0);
            _t.slide_input          = _t.$el.find("input.design").eq(0);
            _t.error_span           = _t.$el.find("span.error").eq(0);
            _t.state_select         = _t.$el.find("select.state").eq(0);


            _t.$el.find('.tshirts-container>li').click(function(){

            selectedImgId = $(this).children().attr("data-img-id");

            if ($('.tblack-btn').hasClass('color-selected')) {
                // if ($(this).attr('id') === 'mouth-container') {
                //     selectedImgId = '';
                // } else {
                 selectedImgId = selectedImgId + '-black';
                // }
               
                 } else {
                    selectedImgId = selectedImgId + '-white';
                 }

                 _t.slide_input.attr("value", selectedImgId);

                 // console.log(selectedImgId);

                 $('.tshirts-container>li').removeClass('tshirt-selected');

                 $(this).addClass('tshirt-selected');

            });

            _t.$el.find('.color-btn').click(function(){              

                $('.tshirts-container>li').removeClass('tshirt-selected');

                $('.color-btn').removeClass('color-selected');

                $(this).addClass('color-selected');

                colorSet = $(this).attr('id') + '-tshirts';

                // console.log(colorSet);

                $('.tshirt-selection').css('opacity', '0');
                $('.' + colorSet).css('opacity', '1');

                // last layer hover conditional
                if ($(this).attr('id') === 'white') {
                    // $('#last-layer').addClass('hover-layer');
                     $('#mouth-container').css('display', 'inline-block');
                    // $('#mouth-container').css('cursor', 'pointer');
                } 

                if ($(this).attr('id') === 'black') {
                    // $('#last-layer').removeClass('hover-layer');
                    // $('#mouth-container').css('cursor', 'initial');
                    $('#mouth-container').css('display', 'none');
                }

            });

            _t.order_form.submit(function(e){
                e.preventDefault();

                _t.submitorder();
            });

            _t.state_select.val(this.session.attributes.client.attributes.state);

        },
        deactivate:function(){
            this.$el.find("li a").off("click");
            // this.slider.remove();
        },
        validate:function(){
            var v = true,
            designInput = this.$el.find("input.design").eq(0).attr("value"),
            error_span = this.$el.find("span.error").eq(0);

            console.log(designInput);

            this.$el.find(".validate").each(function(){
                var input = $(this);

                // input.removeClass("error");

                console.log("INPUT:::: ", input.val());

                if( !input.val() || input.val() == "" ){
                    v = false;
                    // input.addClass("error");
                    error_span.html('Please fill out all the blanks before submitting.');
                }

            });

            
            console.log(designInput);

            if ( !designInput) {
                // console.log('the design has not been selected ');
                v = false;
                // input.addClass("error");
                error_span.html('Please choose a design.');

            } 

            return v;
        },
        submitorder:function(){
            var _t = this;

            if( _t.validate() == true){

                if(!_t.form_container.hasClass("sending")){
                    _t.form_container.addClass("sending");

                    $.ajax({
                      type: 'POST',
                      url: base_url + 'orders/add',
                      data: _t.order_form.serialize(),
                      dataType:'json'
                    }).done(function(result){
                         _t.form_container.removeClass("sending");

                        if(result.success){

                            router.navigate("complete", true);
                        } else {
                             _t.error_span.html(result.error);                            
                        }

                        console.log("order complete: ", result);
                    });
                }
            }
        }


    });

    return TShirt;
});
