ready = ->
  Typed.new '.element',
    strings: [
      "Einstein repeatedly argued that there must be simplified explanations of nature, because God is not capricious or arbitrary."
      "No such faith comforts the software engineer."
    ],
    typeSpeed: 30
    startDelay: 20
  Typed.new '.portfolio-masthead',
    strings: [
      "Welcome to my portfolio. In here I've listed some project's that I've worked on it."
      "Feel free to take a look, I don't have many projects but what it matters is the quality of development."
    ],
    typeSpeed: 30
    startDelay: 20
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready
