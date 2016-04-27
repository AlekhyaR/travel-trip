// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function(){
  $("#content_form").validate({
    ules: {
      "color":{
        required: true
      },
      "font":{
        required: true
      },
      "title":{
        required: true
      }
    },
    messages: {
      "color":{
        required: "Please select color"
      },
      "font":{
        required: "Please select font"
      },
      "title":{
        required: "Please enter title"
      }
    },
    submitHandler: function(form) {
      form.submit();
    }
  });
});