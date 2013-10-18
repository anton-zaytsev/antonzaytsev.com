window.console = window.console || {};
console.log = console.log || function(){};
window.log = console.log;

(function($){

  $(function(){

    var page = $('#page');
    var bg = $("#background");
    var bg_img = $('img', bg);
    bg_img.show().hide();
    page.hide();

    if (bg_img[0].complete) {
      show_bg_img();
    }
    else{
      bg_img.bind('load', function(){
        show_bg_img();
      });
    }

    function show_bg_img(){
      page.fadeIn();
      bg_img.fadeIn();
    }

//    $(window).bind('load', function(){
//      $('#main-text').center();
//    });


  });

})(jQuery);