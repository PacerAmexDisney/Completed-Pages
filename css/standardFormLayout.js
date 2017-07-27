function validateonsubmit(form){
		var returnval = false;
		if (Spry.Widget.Form.validate(form)){
			document.getElementById('errorMsg').innerHTML = '&nbsp;';
			returnval = true;
				
		} else {
			document.getElementById('errorMsg').innerHTML = 'A Required Field above is empty.  Please check the Form and re-submit.';
		}

		return returnval;
	}


