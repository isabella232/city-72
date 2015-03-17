$(document).ready(function(){
  $(".dropdown-button").click(function(event) {
    $(".dropdown-menu").toggleClass("show-menu");
    $(".dropdown-menu > li").click(function(){
      $(".dropdown-menu").removeClass("show-menu");
    });
    event.stopPropagation();
  });
  $('body').click(function() {
    $(".dropdown-menu").removeClass("show-menu");
  });
});
