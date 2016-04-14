
define(['require', 'backbone', './views/book'], function(require, Backbone, BookView) {
    var Controller = Backbone.Router.extend({
        routes: {
            "": "start", // Пустой hash-тэг
            "!/": "start", // Начальная страница
        },
        start: function() {
            var view = new BookView();
            view.render();
        }
    });
    return Controller;
});



