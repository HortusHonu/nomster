To stop having to restart the server after every change, make sure the following
is in the the config/environments/development.rb file
  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false
  config.reload_classes_only_on_change = false


  CSS Question - I am not seeing this

  Open your browser developer tools, by right clicking and inspecting the element on the page. Notice that the carousel image size is defined by the following line of CSS:

.carousel-inner > .carousel-item > img, .carousel-inner > .carousel-item > a > img {
  display: block;
  max-width: 100%;
  height: auto;
  line-height: 1;
}
