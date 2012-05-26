window.console = window.console || {};
console.log = console.log || function(){};
window.log = console.log;

(function($){

  $(function(){

    var email = $('.email');
    var new_href = email[0].href + email.attr('g3') + email.attr('g9') + email.attr('g1') + email.attr('g0') + email.attr('g10');
    email.attr('href', new_href);

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