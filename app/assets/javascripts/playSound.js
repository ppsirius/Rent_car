/**
 * @author Alexander Manzyuk <admsev@gmail.com>
 * Copyright (c) 2012 Alexander Manzyuk - released under MIT License
 * https://github.com/admsev/jquery-play-sound
 * Usage: $.playSound('http://example.org/sound.mp3');
**/

(function($){

  $.extend({
    playSound: function(){
      return $("<embed src='"+arguments[0]+".mp3' hidden='true' autostart='true' loop='false' class='playSound'>" + "<audio autoplay='autoplay' style='display:none;' controls='controls'><source src='"+arguments[0]+".mp3' /></audio>").appendTo('body');
    }
  });

})(jQuery);

$(function() {
  var sounds = ['http://www.noiseaddicts.com/samples/293'];
  $('h1').on('click', function() {
    $.playSound(sounds[0]);
  });
});
