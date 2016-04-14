//--------------------
//------ Views -------
//--------------------
define(['jquery', 'backbone', 'dust', 'text!../templates/book.html'], function($, Backbone, dust, tmpl) {
    var BookView = Backbone.View.extend({
        el: $('#items'),
        render: function () {
            console.log(dust);
        }
    });
    return BookView;
});


