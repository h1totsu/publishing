/**
 * Created by Kokosha on 27.02.2016.
 */


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

var ColPage = Backbone.PageableCollection.extend({
    model : Book,
    url : 'book',

    queryParams: {
        totalRecords: 2,
        totalPages: 2,
    }
});

//---- Init -----
var book = new Books();

var colPage = new ColPage();