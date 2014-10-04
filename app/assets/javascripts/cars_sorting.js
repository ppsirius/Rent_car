$(function(){

  var clickHandler = function (e) {
    console.log(this);
    $.ajax({
      url: "cars",
      data: {sort_by: $(this).attr('id').split('-')[0]},
      dataType: "script"
    });
    console.log($(this).attr('id').split('-')[0])

    return false;
  };


  $('#type-sort').click(clickHandler);

  var links = ['type-sort', 'brand-sort', 'plate-sort', 'color-sort', 'productionYear-sort', 'state-sort'];

  for(var i = 0; i < links.length; i++) {
    $('#'+links[i]).click(clickHandler);
  }

});





