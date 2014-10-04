$(function(){
  $('#car_production_year').keyup(function (e){
    if (this.value.length==4) {
      $(this).removeClass("error");
    }
    else {$(this).addClass("error");}
  })

   $('#car_production_year').focus(function (e){
    if (this.value.length==4) {
      $(this).removeClass("error");
    }
    else {$(this).addClass("error");}
  })

});


