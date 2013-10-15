// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(function(){
	$('#tasks').on("cocoon:after-insert", function(){
		$('div#task_datepicker input').datepicker();
		$('div#req_description input').typeahead({
			name: 'description',
			local: ["Commitment Letter", 
							"Deposit Cheques", 
							"Firm Date", 
							"Mortgage Pre-Approval", 
							"Trade Record"]
		});
	});
	$('.incomplete').click(function(){
		var incomplete_task = $(this).data("task-id");
		var _this = this;

		$.ajax({
			type: 'PUT',
			url: incomplete_task
		}).done(function() {
			$(_this).parent().remove();
		})
	});
});
