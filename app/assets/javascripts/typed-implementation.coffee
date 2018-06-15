ready = ->
  Typed.new '.element',
    strings: [
      "Einstein repeatedly argued that there must be simplified explanations of nature, because God is not capricious or arbitrary."
      "No such faith comforts the software engineer."
    ],
    typeSpeed: 30
    startDelay: 20
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready
