$(document).ready(function() {

  var partOne = $('#maintext').html().substring(0, 750);
  var partTwo = $('#maintext').html().substring(750, $('#maintext').text().length - 1);
  $('#maintext').html(partOne);
  $('#runoff').html(partTwo );

});
