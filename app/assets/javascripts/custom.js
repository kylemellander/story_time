$(document).ready(function() {
  $('.fa').click(function(){
    alert('hi');
    $().append(<%= fa_icon "#{@images[rand(6)]}" %>)
    $('#form').append('<%= j render("form") %>')
  });
});
