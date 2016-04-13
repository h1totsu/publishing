//--------------------
//------ Views -------
//--------------------
var BookView = Backbone.View.extend({
    el: $('#items'),
    render : function() {
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

