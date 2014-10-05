$(function(){

  var clickHandler = function (e) {
    $.ajax({
      url: "clients",
      data: {sort_by: $(this).data("sort-by"), sort_dir: $(this).data("sorting-dir")},
      dataType: "script"
    });
    var clickedLink = $(this);
    var sortAsc = clickedLink.data("sorting-dir")==="ASC";
    var arrows = $(".fa.fa-angle-down, .fa.fa-angle-up")
    arrows.removeClass()
    arrows.addClass("fa fa-angle-right")

    clickedLink.next().removeClass();

    if (sortAsc){
      clickedLink.data("sorting-dir", "DESC");      
      $(this).next().addClass("fa fa-angle-down");
    } else{
      clickedLink.data("sorting-dir", "ASC");
      $(this).next().addClass("fa fa-angle-up");
    };   
    
    

    return false;
  };




  var links = ['name-sort', 'surname-sort', 'age-sort', 'doc_type-sort', 'doc_number-sort'];

  for(var i = 0; i < links.length; i++) {
    $('#'+links[i]).click(clickHandler);
  }

});


