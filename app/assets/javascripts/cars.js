$(function(){

  var plateValid = false;
  var yearValid = false;
  var colorValid = false;

  function buttonSwitcher () {
    if (plateValid == true && yearValid == true && colorValid == true) {
      $("[name='commit']").removeAttr("disabled");
    } else {
        $("[name='commit']").attr("disabled", 'disable');

    }
  }

  var carYearValidator = function (e){
    yearValid = this.value.length==4; 

    if (yearValid) {
      $(this).removeClass("error");
      
    } else {
      $(this).addClass("error");
    }
    buttonSwitcher()
  };

  var carPlateValidator = function (e){
    plateValid = this.value.length==5

    if (plateValid) {
      $(this).removeClass("error");
    } else {
      $(this).addClass("error");
    }
    buttonSwitcher();

  };

  var carColorValidator = function (e){
    colorValid = this.value.length >0

    if (colorValid) {
      $(this).removeClass("error");
    } else {
      $(this).addClass("error");
    }
    buttonSwitcher();
  };

  buttonSwitcher()
  $('#car_production_year').keyup(carYearValidator);
  $('#car_production_year').focus(carYearValidator);
    
  $('#car_plate').keyup(carPlateValidator);
  $('#car_plate').focus(carPlateValidator);
   
  $('#car_car_paint').keyup(carColorValidator);
  $('#car_car_paint').focus(carColorValidator);
    

});


