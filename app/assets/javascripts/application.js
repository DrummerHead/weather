// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

(function($) {
  function initialize() {
    var canvas     = $('#map-canvas');
    var latitude   = canvas.data('latitude');
    var longitude  = canvas.data('longitude');
    var mapOptions = {
      center: new google.maps.LatLng(latitude, longitude),
      zoom: 12,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };

    if (canvas[0] !== undefined) {
      new google.maps.Map(canvas[0], mapOptions);
    }

    $('.forecast-control').click(function(event) {
      var current = $('#weather .forecast:visible');
      var current_index = current.data('index');
      var right = $(this).hasClass('right')
      var left = !right
      if ((right && current_index + 1 > 2) || (left && current_index - 1 < 0))
      {
        current_index = right ? 0 : 2;
      }
      else
      {
        current_index = right ? current_index + 1 : current_index -1;
      }
      current.toggleClass('hide');
      $($('#weather .forecast').get(current_index)).toggleClass('hide')
    });
  }

  // Handle Turbolinks page reloads. https://github.com/rails/turbolinks#events.
  $(document).ready(initialize);
  $(document).on('page:load', initialize);
})(jQuery);
