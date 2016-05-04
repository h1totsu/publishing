
define(['backbone',
    './views/book',
    './views/author',
    './views/series',
    './views/genre',
    './views/page'],
    function(Backbone,
             BookView, AuthorView, SeriesView, GenreView, PageView) {
    var Book = Backbone.Model.extend({
        idAttribute: 'id',
        urlRoot: 'book'
    })
    var Controller = Backbone.Router.extend({
        routes: {
            "": "books",
            "/": "books",
            "authors": "authors",
            "series": "series",
            "genres": "genre",
            "page/:type/:id": "page"
        },
        books: function() {
            new BookView().render();
        },
        authors: function() {
            new AuthorView().render();
        },
        series: function() {
            new SeriesView().render();
        },
        genre: function(){
            new GenreView().render();
        },
        page: function(type, id){
            var model = undefined;
            switch(type) {
                case 'book': {
                   new Book({'id' : id}).fetch({
                       error: function(data) {
                           new PageView().render(data);
                       }
                   });
                } break;
                case 'author': {

                } break;
            }
        }
    });
    return Controller;
});



