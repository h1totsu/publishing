/**
 * Created by Kokosha on 18.04.2016.
 */
define(['jquery', 'backbone', 'dust', 'text!../templates/page.jsp'],
    function($, Backbone, dust, tmpl) {
        var PageView = Backbone.View.extend({
            el: '.features_items',
            render: function (model) {
                console.log(model)
                var self = this;
                dust.renderSource(tmpl, model,
                    function(err, out) { self.$el.html(out) });
            }
        });
        return PageView;
    });


