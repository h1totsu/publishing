//--------------------
//------ Models ------
//--------------------

var Author = Backbone.Model.extend({
    urlRoot: 'http://localhost:8080/author',
    idAttribute: 'id',
});


var Book = Backbone.Model.extend({
    urlRoot: 'http://localhost:8080/book',
    idAttribute: 'id',
});

//--------------------
//--- Collections ----
//--------------------

var Authors = Backbone.Collection.extend({
    model : Author,
    url : 'author',
});

var Books = Backbone.Collection.extend({
    model : Book,
    url : 'book',
})

//---- Init -----
var book = new Books();