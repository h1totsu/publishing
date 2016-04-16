
define(['backbone',
    './views/book',
    './views/author',
    './views/series',
    './views/genre'],
    function(Backbone,
             BookView, AuthorView, SeriesView, GenreView) {
    var Controller = Backbone.Router.extend({
        routes: {
            "": "books",
            "/": "books",
            "authors": "authors",
            "series": "series",
            "genres": "genre"
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
        }
    });
    return Controller;
});



