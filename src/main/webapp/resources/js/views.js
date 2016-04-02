//--------------------
//------ Views -------
//--------------------

var AuthorView = Backbone.View.extend({
    el: $('.features_items'),
    tmpl: '#single-item-template',
    render : function(data) {
        var self = this;
        authors = new Authors();
        authors.fetch({
            success : function() {
                //var authorThumbTemplate = _.template($('#authorThumbnail').html(), {
                //    authors : authors
                //});
                //self.$el.html(authorThumbTemplate);
                var template = _.template($(this.tmpl).html(), {authors : authors});
                self.$el.html(template);
            }
        });
    }
});