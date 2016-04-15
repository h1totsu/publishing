define(['jquery', 'backbone', 'dust', 'text!../templates/author.html', ], function($, Backbone, dust, tmpl) {
    var AuthorView = Backbone.View.extend({
        el: '.features_items',
        render: function () {
            var authors = {
                authors : [
                    {'name' : 'Author1'},
                    {'name' : 'Author2'},
                    {'name' : 'Author3'}
                ]
            }
            var self = this;
            dust.renderSource(tmpl, authors, function(err, out) {
                self.$el.html(out);
            });
        }
    });
    return AuthorView;
});
