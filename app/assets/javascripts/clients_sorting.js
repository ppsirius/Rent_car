$(function(){

  var clickHandler = function (e) {
    $.ajax({
      url: "clients",
      data: {sort_by: $(this).data("sort-by"), sort_dir: $(this).data("sorting-dir")},
      dataType: "script"
    });
    var clickedLink = $(this);
    var sortAsc = clickedLink.data("sorting-dir")==="ASC";
    if (sortAsc){
      clickedLink.data("sorting-dir", "DESC")
    } else{
      clickedLink.data("sorting-dir", "ASC");
    };   
    var sortClass = $(this).attr("class")==="ASC";
    clickedLink.removeClass();

      if (sortClass){
        $(this).addClass("DESC");
      } else {
      $(this).addClass("ASC");
      };
    

    return false;
  };




  var links = ['name-sort', 'surname-sort', 'age-sort', 'doc_type-sort', 'doc_number-sort'];

  for(var i = 0; i < links.length; i++) {
    $('#'+links[i]).click(clickHandler);
  }

});


