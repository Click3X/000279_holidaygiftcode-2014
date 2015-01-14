/*global define*/

define([
    'pages/page',
    'modules/videoplayer_view',
    'text!template/video.php',
], function (PageTemplate, VideoPlayerView, T) {
    'use strict';

    var Video = PageTemplate.extend({
        template: _.template( T ),
        videoplayer:null,
        saved_video_key:null,
        activate:function(){
            var _t = this;

            console.log( "activate video" );

            _t.selections = [];
            _.each(_t.session.attributes.questions.models, function(_model){
                _t.selections.push(_model.attributes.selection);
            });

            _t.videoplayer = new VideoPlayerView({
                el:_t.$el.find(".video-player")[0],
                collection:_t.session.attributes.questions
            });

            _t.videoplayer.model.on("change:ready", function(_model){
                if( _model.get("ready") )
                    _t.onvideoready();
            });

            $('body').animate({scrollTop:0}, {duration:500, easing: "easeInOutCubic", complete:function(){
                _t.getCombinedVideo();
            }});
        },
        deactivate:function(){
            console.log("deactivate video");
        },
        getCombinedVideo:function(){
            var _t = this;

            console.log(JSON.stringify( _t.selections ));

            $.ajax({
                type: 'POST',
                url: endcoder_url,
                data: { "selections": JSON.stringify( _t.selections ), "ending": _t.session.get("data").get("story_end") },
                dataType: "json",
                success: function(response){
                    if(response.status == "success"){
                        _t.saved_video_key = response.id;

                        var _type = mp4 ? "mp4" : "webm";

                        _t.videoplayer.load( response[_type].video, _type, base_url + "images/thumbs/video_poster.jpg" );

                        /*---poster based on first question. uncomment if needed.-----*/
                        //_t.videoplayer.load( response[_type].video, _type, base_url + "images/thumbs/"+ response["poster_id"] + ".jpg" );

                        _t.$el.find(".social-buttons a.fb").click( function(){
                            _t.shareonfacebook();
                        });

                        _t.$el.find(".social-buttons a.tw").click( function(e){ 
                            e.preventDefault(); 
                            _t.shareontwitter();
                        });
                    }
                },
                error:function(error){
                    console.log(error);
                }
            });
        },
        onvideoready:function(){
            var _t = this;

            $('body').animate({ scrollTop: $("#page-container").offset().top - 10 }, {duration:500, easing: "easeInOutCubic", complete:function(){
                _t.ready();
                _t.showfooter();
            }});
        },
        shareonfacebook:function(){
            var _t = this;

            tracksocial("facebook");

            FB.ui({
              method: 'share',
              href: base_url + 'video/' + _t.saved_video_key,
            }, function(response){
                console.log("facebook sharing complete: ", response);
            });
        },
        shareontwitter:function(){
            var _t = this;

            tracksocial("twitter");
            
            openpopup( "https://twitter.com/share?url=" + base_url + 'video/' + _t.saved_video_key + "&text=" + encodeURIComponent( default_twitter_status ) , "Share on Twitter", 530, 240 );
        },
    });

    return Video;
}); 