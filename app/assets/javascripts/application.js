//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require js/jquery.dataTables
//= require js/dataTables.bootstrap4
//= require_tree .

$(document).on('turbolinks:load', function() {
  $('table[role="dataTable"]').dataTable({})
})
