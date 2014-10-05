$(function(){

  var clickHandler = function (e) {
    $.ajax({
      url: "rents",
      data: {sort_by: $(this).data('sort-by')},
      dataType: "script"
    });
    return false;
  };

  var links = ['full-name-sort', 'model-sort', 'brand-sort', 'date-sort', 'rented-sort'];

  for(var i = 0; i < links.length; i++) {
    $('#'+links[i]).click(clickHandler);
  }

});

