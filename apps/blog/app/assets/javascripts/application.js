// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


var counts = {},
    track  = document.getElementsByClassName('click-tracking');

for (var i = 0, max = track.length; i < max; i++) {
    track[i].addEventListener('click', function() {
        // Caching...
        var name = this.name,
            ele  = document.getElementById(name + '-count') || false;
        
        // Check if the array index exists, if it doesn't create it with a value
        // of '0' by default
        if (typeof counts[name] === 'undefined') {
            counts[name] = 0;
        }
        
        // Check if the element exists, if it doesn't create it
        if (!ele) {
            var ele    = document.createElement('div');
                ele.id = name + '-count';
            
            // Insert the new element after the next sibling so it falls after this
            // element in the DOM
            this.parentNode.insertBefore(ele, this.nextSibling);
        }
        
        ele.innerHTML = counts[name]++;
    });
}
