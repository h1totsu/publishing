
define(['backbone', 'router'], function (Backbone, Controller) {
    var app = {
        start: function () {
            define.amd.dust = true;
            var controller = new Controller();
            Backbone.history.start();
        },
    }
    return app;
});