$(function(){
  var flash = $('.flash');

  setTimeout(function(){
    flash.slideDown('slow');
    setTimeout(function(){
      flash.slideUp('slow');
    }, 3000);
  }, 500);

});