// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import * as bootstrap from "bootstrap"
import * as jquery from "jquery"
import "semantic-ui" 
import "channels"

window.scroll_bottom = function() {
    if ($('#messages').length > 0) {
        $('#messages').scrollTop($('#messages')[0].scrollHeight);
    }   
}

$(document).on('turbo:load', function() {
    $('.ui.dropdown').dropdown();
    scroll_bottom();
})

$(document).on('turbo:render', function() {
    $('.ui.dropdown').dropdown();
})

