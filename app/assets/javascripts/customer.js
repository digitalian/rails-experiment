//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require jquery.ui.datepicker
//= require jquery.ui.datepicker-ja
//= require twitter/bootstrap
//= require_tree ./shared
//= require_tree ./customer
jQuery ->
$("a[rel~=popover], .has-popover").popover()
$("a[rel~=tooltip], .has-tooltip").tooltip()