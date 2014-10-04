$(function(){
  if($("body").data("controller")=="CarsController" && $("body").data("action")=="new"){

  var plateValid = false;
  var yearValid = false;
  var colorValid = false;
  var yearField = $('#carform #car_production_year')
  var plateField = $('#carform #car_plate')
  var colorField = $('#carform #car_car_paint')
  var regexPlate = /[a-zA-Z]{3,}\d\d/

  function buttonSwitcher () {
    var sumbitButton = $("[name='commit']")
    if (plateValid == true && yearValid == true && colorValid == true) {
      $(sumbitButton).removeAttr("disabled");
    } else {
        $(sumbitButton).attr("disabled", 'disable');
    }
     console.log(colorValid);
  }

  var carYearValidator = function (e){
    
    yearValid = this.value && this.value.length==4 && $.isNumeric(this.value); 

    if (yearValid) {
      $(this).removeClass("error");
      
    } else {
      $(this).addClass("error");
    }
    buttonSwitcher()
  };

  var carPlateValidator = function (e){
    plateValid = this.value && this.value.match(regexPlate);

    if (plateValid) {
      $(this).removeClass("error");
    } else {
      $(this).addClass("error");
    }
    buttonSwitcher();

  };

  var carColorValidator = function (e){
    colorValid = this.value && this.value.length >0

    if (colorValid) {
      $(this).removeClass("error");
    } else {
      $(this).addClass("error");
    }
    buttonSwitcher();
  };

  carYearValidator.call(yearField);
  carPlateValidator.call(plateField);
  carColorValidator.call(colorField);
  
  $(yearField).keyup(carYearValidator);
  $(yearField).focus(carYearValidator);
    
  $(plateField).keyup(carPlateValidator);
  $(plateField).focus(carPlateValidator);
   
  $(colorField).keyup(carColorValidator);
  $(colorField).focus(carColorValidator);

 
  buttonSwitcher();
    

}});


