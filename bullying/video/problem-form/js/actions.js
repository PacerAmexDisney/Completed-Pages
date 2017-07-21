function ShowForm(){
	$("#flash").fadeTo('fast', 0);
	$("#overlay").fadeTo('slow', 0.5);
	$("#problem_form").slideDown(500);

	}
function HideForm() {
	$("#problem_form").hide();
	$("#overlay").hide();
	$("#flash").fadeTo('fast', 1.0);
	
}
