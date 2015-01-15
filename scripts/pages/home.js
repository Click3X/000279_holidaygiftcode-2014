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
        },
    });

    return Home;
});
