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


//--------------------
//--- Collections ----
//--------------------

var Authors = Backbone.Collection.extend({
    model : Author,
    url : 'author',
});

//---- Init -----

var authors = new Authors();