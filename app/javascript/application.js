// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import * as bootstrap from "bootstrap"
import * as jquery from "jquery"
import "semantic-ui" 


$(document).on('turbo:load', function() {
    $('.ui.dropdown').dropdown();
})

$(document).on('turbo:render', function() {
    $('.ui.dropdown').dropdown();
})import "./channels"
