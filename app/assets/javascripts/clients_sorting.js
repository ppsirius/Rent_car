$(function(){

  var clickHandler = function (e) {
    $.ajax({
      url: "clients",
      data: {sort_by: $(this).data("sort-by")},
      dataType: "script"
    });
    

    return false;
  };



  var links = ['name-sort', 'surname-sort', 'age-sort', 'doc_type-sort', 'doc_number-sort'];

  for(var i = 0; i < links.length; i++) {
    $('#'+links[i]).click(clickHandler);
  }

});


