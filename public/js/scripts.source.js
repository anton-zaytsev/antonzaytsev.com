(function($){

  $(function(){

    var email = $('.email');
    var new_href = email[0].href + email.attr('g3') + email.attr('g9') + email.attr('g1') + email.attr('g0') + email.attr('g10');
    email.attr('href', new_href);

    var bg = $("#background");
    var bg_img = $('img', bg);
    bg_img.css({
      'display' : 'block'
    }).hide();

    if (bg_img[0].complete) {
      show_bg_img();
    }
    else{
      bg_img.bind('load', function(){
        show_bg_img();
      });
    }

    function show_bg_img(){
      bg_img.fadeIn();
    }

//    if (window.location.pathname == '/') {
//
//      $('#logo').attr('href', '/#/');
//      $('nav li a').attr('href', function(i, href){return '/#/'+href;});
//
//      $(window).bind('hashchange', function(e){
//        var h = window.location.hash,
//          hash = '';
//
//        if (!h) {
//          return;
//        }
//        if (h == '#/'){
//          $('section').html('');
//          return;
//        }
//
//        hash = h.substr(2).split('/');
//        if (hash.length > 0 && hash[hash.length-1] === '') {
//          hash.splice(hash.length-1,1);
//        }
//
//        $.ajax({
//          type:'get',
//          url:window.location.href,
//          data:{page:hash[0]},
//          success:function(resp){
//            var speed = 200;
//            $('section').fadeOut(speed, function(){$(this).html(resp.data);}).fadeIn(speed);
//
//            $('a[href^="http"]').addClass('external');
//          }
//        });
//
//      }).trigger('hashchange');
//
//    }
//
//    $('a[href^="http"]')
//      .live('click', function(e){
//      window.open(this.href);
//      e.preventDefault();
//    });

  });

})(jQuery);

if (window.console === undefined) window.console = {};
console.log = console.log || function(){};

var log = console.log;