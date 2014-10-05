$(function(){ 
 

  $('.arrow').click(function() {
    var clickedArrow = $(this)

    if(clickedArrow.parent().hasClass('ui-state-active')) {
      $(clickedArrow).addClass('selected');
    }

    else {

      if(clickedArrow.hasClass('selected')) {
        console.log('if')
        $(clickedArrow).removeClass('selected')
      } else {
        console.log('else')
        $(clickedArrow).addClass('selected');
      }
}
  });

});