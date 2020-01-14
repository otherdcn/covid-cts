// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on('turbolinks:load', function () {
  $('#static-table').DataTable();

  $(".alert-success").fadeTo(5000, 500).slideUp(500, function(){
    $(".alert").slideUp(500);
  });
  $(".alert-warning, .alert-danger, .alert-info").fadeTo(15000, 500).slideUp(500, function(){
    $(".alert").slideUp(500);
  });
} );