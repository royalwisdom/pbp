$(document).ready(function(){
  var content = $('.content');
  var nav_tab = $('li');
  var fit_map = function(){
          var window_height = $(window).height();
          var window_width = $(window).innerWidth(); 
          var nav_width = $('.nav').outerWidth();          
          var gmap_offset = $('.gmap').offset();
          $('.iframe').height(window_height - 80); 
          $('.iframe').innerWidth(window_width - (nav_width + .01*window_width)); 
  };
  var set_default_display = function(){
    content.each(function(){
      if($(this).data('page') == "read"){
        $(this).addClass("active-content");
      }else{
        $(this).addClass('inactive-content');
      }
    })
  };
  var erase_box_shadow = function(){
    nav_tab.each(function(){
      $(this).css({boxShadow: "0px 0px 0px 0px",zIndex: "1"}); 
    });
  }, draw_box_shadow = function(li){
    li.css({boxShadow: "0px 0px 10px 0px black", zIndex: "10"}); 
  };
  var exchange_content = function(c, t){
    
    var h = $(window).height(); 
    if(c.data("page") == t){
        c.animate({top: "0px"}, 500);
        
        if(t == "map"){
          fit_map();
        }
    }else{
          c.animate({top: -5555}, 600).removeClass('active-content').addClass('inactive-content');
    }
  };
  set_default_display();
  
  $('li').click(function(){
    var t = $(this).data("page"); 
    var li = $(this);
    
    erase_box_shadow();
    draw_box_shadow(li);    
    
    $('.content').each(function(){
      var content = $(this);
      exchange_content(content, t);
    })

    $(window).resize(function(){
      if(li.data("page") == "map"){
        fit_map(); 
      }
    })
  })
  
  $(window).resize(function(){
      if(nav_tab.data("page") == "map"){
        fit_map(); 
      }
  })
})