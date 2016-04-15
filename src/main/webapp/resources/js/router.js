
define(['require', 'backbone',
    './views/book',
    './views/author'],
    function(require, Backbone,
             BookView, AuthorView) {
    var Controller = Backbone.Router.extend({
        routes: {
            "": "books",
            "/": "books",
            "authors": "authors",
        },
        books: function() {
            console.log('book')
            new BookView().render();
        },
        authors: function() {
            console.log('aut')
            new AuthorView().render();
        }
    });
    return Controller;
});



