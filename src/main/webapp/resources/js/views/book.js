define(['jquery', 'backbone', 'dust', 'text!../templates/book.html', ], function($, Backbone, dust, tmpl) {
    var BookView = Backbone.View.extend({
        el: '.features_items',
        render: function () {
            var books = {
                books : [
                    {'name' : 'Book1'},
                    {'name' : 'Book2'},
                    {'name' : 'Book3'}
                ]
            }
            var self = this;
            dust.renderSource(tmpl, books, function(err, out) {
                self.$el.html(out);
            });
        }
    });
    return BookView;
});


