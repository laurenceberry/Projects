window.showImage = (image_url) ->
  src = image_url
  img = document.createElement('img')
  img.src = src
  document.getElementById('modal').style.display = 'block'
  document.getElementById('modal_image').src = src
  return

window.hideImage = (image_url) ->
  document.getElementById('modal').style.display = 'none'
  return