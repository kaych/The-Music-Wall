$(document).ready(function() {

$(".nav a").on("click", function(){
  $(".nav").find(".active").removeClass("active");
  $(this).parent("li").addClass("active");
});

});

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()