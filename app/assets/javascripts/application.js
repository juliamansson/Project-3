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
//= require jquery-canvas-sparkles.js
//= require_tree .


$(function(){
var current_fs, next_fs, previous_fs; 
var left, opacity, scale; 
var animating;

$(".next").click(function(){

  if ($('#base_flavour_id').val() != ""){
    console.log("ok");

    if(animating) return false;
    animating = true;
    
    current_fs = $(this).parent();
    next_fs = $(this).parent().next();
   
    $("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");
    
   
    next_fs.show(); 
   
    current_fs.animate({opacity: 0}, {
      step: function(now, mx) {
        //as the opacity of current_fs reduces to 0 - stored in "now"
        //1. scale current_fs down to 80%
        scale = 1 - (1 - now) * 0.2;
        //2. bring next_fs from the right(50%)
        left = (now * 50)+"%";
        //3. increase opacity of next_fs to 1 as it moves in
        opacity = 1 - now;
        current_fs.css({'transform': 'scale('+scale+')'});
        next_fs.css({'left': left, 'opacity': opacity});
      }, 
      duration: 800, 
      complete: function(){
        current_fs.hide();
        animating = false;
      }, 
      //this comes from the custom easing plugin
      easing: 'easeInOutBack'
    });

  }

  else
  {
    alert("Please select a flavour");
  }

});

$(".previous").click(function(){
  if(animating) return false;
  animating = true;
  
  current_fs = $(this).parent();
  previous_fs = $(this).parent().prev();
  
  //de-activate current step on progressbar
  $("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");
  
  //show the previous fieldset
  previous_fs.show(); 
  //hide the current fieldset with style
  current_fs.animate({opacity: 0}, {
    step: function(now, mx) {
      //as the opacity of current_fs reduces to 0 - stored in "now"
      //1. scale previous_fs from 80% to 100%
      scale = 0.8 + (1 - now) * 0.2;
      //2. take current_fs to the right(50%) - from 0%
      left = ((1-now) * 50)+"%";
      //3. increase opacity of previous_fs to 1 as it moves in
      opacity = 1 - now;
      current_fs.css({'left': left});
      previous_fs.css({'transform': 'scale('+scale+')', 'opacity': opacity});
    }, 
    duration: 800, 
    complete: function(){
      current_fs.hide();
      animating = false;
    }, 
    //this comes from the custom easing plugin
    easing: 'easeInOutBack'
  });
});

$(".submit").click(function(){
  return false;
})




  $('select').change( function() {
    var base_flavour_id = $('#base_flavour_id').val();
    var topping_flavour_id = $('#topping_flavour_id').val();
    var frosting_flavour_id = $('#frosting_flavour_id').val();

    var image_name_array = [];

    if (topping_flavour_id) {
      image_name_array.push(topping_flavour_id);
    }
    if (frosting_flavour_id) {
      image_name_array.push(frosting_flavour_id);
    }
    if (base_flavour_id) {
      image_name_array.push(base_flavour_id);
    }

    var image_preview_id = '#image_preview_' + image_name_array.join('_');

    var image_preview_src = $(image_preview_id).attr('src');

    $(".imagePreview").attr('src', image_preview_src);
    // $(".imagePreview").show();
    $(".image-container").show();
  });




 

  $('.order_button').click( function() {
    $('#hidden_form').show();
  });

  if($('#error_explanation')[0]) {
    $('#hidden_form').show();
  }

  $('.continue_button').click( function() {
      location.href = "/orders";
  });


  $("#main_title").sparkle({

    color: "#FFFFFF",
    count: 30,
    overlap: 0,
    speed: 1,
    minSize: 4,
    maxSize: 7,
    direction: "both"
  });

  $("#linkie").sparkle({

    color: "#FFFFFF",
    count: 30,
    overlap: 0,
    speed: 1,
    minSize: 4,
    maxSize: 7,
    direction: "both"
  });

  $(".order_button").sparkle({

    color: "#FFFFFF",
    count: 30,
    overlap: 0,
    speed: 1,
    minSize: 4,
    maxSize: 7,
    direction: "both"
  });

  $(".continue_button").sparkle({

    color: "#FFFFFF",
    count: 30,
    overlap: 0,
    speed: 1,
    minSize: 4,
    maxSize: 7,
    direction: "both"
  });


  $("#linkie_about").sparkle({

    color: "#FFFFFF",
    count: 30,
    overlap: 0,
    speed: 1,
    minSize: 4,
    maxSize: 7,
    direction: "both"
  });


  $("#linkie_contact").sparkle({

    color: "#FFFFFF",
    count: 30,
    overlap: 0,
    speed: 1,
    minSize: 4,
    maxSize: 7,
    direction: "both"
  });

  $("#linkie_signin").sparkle({

    color: "#FFFFFF",
    count: 30,
    overlap: 0,
    speed: 1,
    minSize: 4,
    maxSize: 7,
    direction: "both"
  });

  $(".nav_links").sparkle({

    color: "#FFFFFF",
    count: 30,
    overlap: 0,
    speed: 1,
    minSize: 4,
    maxSize: 7,
    direction: "both"
  });
});















