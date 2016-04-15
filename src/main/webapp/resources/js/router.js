
define(['backbone',
    './views/book',
    './views/author'],
    function(Backbone,
             BookView, AuthorView) {
    var Controller = Backbone.Router.extend({
        routes: {
            "": "books",
            "/": "books",
            "authors": "authors",
        },
        books: function() {
            new BookView().render();
        },
        authors: function() {
            new AuthorView().render();
        }
    });
    return Controller;
});



