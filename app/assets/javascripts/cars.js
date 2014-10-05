$(function(){
  if($("body").data("controller")=="CarsController" && $("body").data("action")=="new"){

  var plateValid = false;
  var yearValid = false;
  var colorValid = false;
  var yearField = $('#car_production_year')
  var plateField = $('#car_plate')
  var colorField = $('#car_car_paint')
  var regexPlate = /[a-zA-Z]{3,}\d\d/
  var sumbitButton = $("[name='commit']")

  function buttonSwitcher () {   
    if (plateValid && yearValid && colorValid) {
      $(sumbitButton).removeAttr("disabled");
    } else {
        $(sumbitButton).attr("disabled", 'disable');
    }
   }

  var carYearValidator = function (e){
    var jfield = $(this)
    
    yearValid = jfield.val().length==4 && $.isNumeric(jfield.val()); 

    if (yearValid) {
      jfield.removeClass("error");
      
    } else {
      jfield.addClass("error");
    }
    buttonSwitcher()
  };

  var carPlateValidator = function (e){
    var jfieldPlate = $(this)
    plateValid = jfieldPlate.val().match(regexPlate);

    if (plateValid) {
      jfieldPlate.removeClass("error");
    } else {
      jfieldPlate.addClass("error");
    }
    buttonSwitcher();

  };

  var carColorValidator = function (e){
    var jfieldColor = $(this)
    colorValid = jfieldColor.val().length >0

    if (colorValid) {
      jfieldColor.removeClass("error");
    } else {
      jfieldColor.addClass("error");
    }
    buttonSwitcher();
  };

  carYearValidator.call(yearField[0]);
  carPlateValidator.call(plateField[0]);
  carColorValidator.call(colorField[0]);
  
  $(yearField).keyup(carYearValidator);
  $(yearField).focus(carYearValidator);
    
  $(plateField).keyup(carPlateValidator);
  $(plateField).focus(carPlateValidator);
   
  $(colorField).keyup(carColorValidator);
  $(colorField).focus(carColorValidator);

 
  buttonSwitcher();
    

}});


