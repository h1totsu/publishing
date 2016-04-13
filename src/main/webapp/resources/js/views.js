//--------------------
//------ Views -------
//--------------------
var BookView = Backbone.View.extend({
    el: $('#forTest'),
    tmpl: '#single-item-template',
    render : function() {
        console.log('Test')
        var self = this;
        books = new Books();
        books.fetch({
            success : function() {
                var template = _.template($('#single-item-template').html(), {
                    books : books
                });
                self.$el.html(template);
            }
        });
    }
});

