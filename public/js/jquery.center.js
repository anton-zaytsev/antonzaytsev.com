/*

 example fo using:
    $(window).resize(function(){
        wrp.center();
    })
*/

(function($){
    jQuery.fn.center = function(o){
        var $ = jQuery,
            o = $.extend({
                position : 'absolute',
                resizeEvent : true
            },o),
            w = $(window),//$('body'),
            top = (w.height()-this.height())/2,
            left = (w.width()-this.width())/2,
            _this = this,
            ownFunc = arguments.callee

        switch(o.position){
            case 'fixed':break;
            default:
                top += w.scrollTop();
                left += w.scrollLeft();
                o.position = 'absolute';
                break;
        }

        if (w.height() < this.height()) {
            top = 0;
        }

        if (w.width() < this.width()) {
            left = 0;
        }

        this.css({
            "top"       : top<0?0:top,
            "left"      : left<0?0:left,
            'position'  : o.position
        });

        if (o.resizeEvent){
            $(window).resize(function(){
                var p = o;
                p.resizeEvent = false;
                ownFunc.apply(_this,[p]);
            })
        }

        return this;
    }
})(jQuery)