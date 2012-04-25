doctype 5
html lang: 'en', ->
  head ->
    link rel: 'stylesheet', href: '/css/bootstrap.min.css', type: 'text/css'
    link rel: 'stylesheet', href: '/css/site.css', type: 'text/css'
    title -> 'The Bet'
    script type: 'text/javascript', src: '/js/jquery-1.7.1.min.js'
    script type: 'text/javascript', src: '/socket.io/socket.io.js'
    script type: 'text/javascript', src: '/js/bootstrap.min.js'
    script type: 'text/javascript', src: '/js/underscore-min.js'
    script type: 'text/javascript', src: '/js/backbone-min.js'
    script type: 'text/javascript', src: '/js/site.js'
  body ->
    div class: 'container', -> @body 
