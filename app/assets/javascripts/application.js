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
//= require materialize-sprockets
//= require ckeditor/init
//= require_tree .
$( document ).ready(function() {
	$('.datepicker').pickadate({
		selectMonths: true,
		selectYears: 15
	});
	$('ul.tabs').tabs();
	$('.collapsible').collapsible({
		accordion : false // A setting that changes the collapsible behavior to expandable instead of the default accordion style
	});
	if(localStorage.getItem('popState') != 'shown'){
		$('#disclaimer').openModal();
		localStorage.setItem('popState','shown')
	}
	$('.dropdown-button').dropdown();
	// Show sideNav
	$('.button-collapse').sideNav('show');
// Hide sideNav
	$('.button-collapse').sideNav('hide');
	$('.button-collapse').sideNav({
			edge: 'right', // Choose the horizontal origin
			closeOnClick: true // Closes side-nav on <a> clicks, useful for Angular/Meteor
		}
	);
});