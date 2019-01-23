

Shiny.addCustomMessageHandler('set_bg', function(data) {
  $('body').css('background-color', data.color)
});

