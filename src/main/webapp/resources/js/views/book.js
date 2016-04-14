//--------------------
//------ Views -------
//--------------------
define(['jquery', 'backbone', 'dust', 'text!../templates/book.html', ], function($, Backbone, dust, tmpl) {
    var BookView = Backbone.View.extend({
        el: $('#items'),
        render: function () {
            var data = {name : '123'};
            dust.renderSource(tmpl, JSON.parse(data), function(err, out) {
                console.log(out);
            });
        }
    });
    return BookView;
});


