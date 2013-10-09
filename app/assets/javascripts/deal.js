// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(function(){
	$('#tasks').on("cocoon:after-insert", function(){
		$('div#task_datepicker input').datepicker();
	});
});