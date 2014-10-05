$(function(){

  var clickHandler = function (e) {
    $.ajax({
      url: "cars",
      data: {sort_by: $(this).data('sort-by')},
      dataType: "script"
    });

    return false;
  };



  var links = ['type-sort', 'brand-sort', 'plate-sort', 'color-sort', 'productionYear-sort', 'state-sort'];

  for(var i = 0; i < links.length; i++) {
    $('#'+links[i]).click(clickHandler);
  }

});





