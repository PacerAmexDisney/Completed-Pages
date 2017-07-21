jQuery.fn.dataTableExt.aTypes.unshift(
    function ( sData )
    {
        var sValidChars = "0123456789-,";
        var Char;
        var bDecimal = false;
        var months=["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
         
		var monthAndYear = sData.split(" ");
		
		if (monthAndYear.length == 2){ 
	
			/* Check the month part */
			if (($.inArray(monthAndYear[0], months)) && (monthAndYear[1] > 0 && monthAndYear[1] < 3000)) {
				return 'month-year';
			}
		} 
		return null;
    }
);
 
jQuery.fn.dataTableExt.oSort['month-year-asc']  = function(a,b) {
        var aDate = MonthYearConvertDate(a); 
        var bDate = MonthYearConvertDate(b); 
        //compare the two dates
        return (( bDate < aDate ) ? 1 : (( bDate > aDate ) ?  -1 : 0));
};
 
jQuery.fn.dataTableExt.oSort['month-year-desc'] = function(a,b) {
        var aDate = MonthYearConvertDate(a); 
        var bDate = MonthYearConvertDate(b); 
        //compare the two dates
        return (( bDate < aDate ) ? -1 : (( bDate > aDate ) ?  1 : 0));
};

function MonthYearConvertDate(monthYear){
	    //Expected input string = "October 2012"
		
		//array of months
        var months=["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
         
        dateComponents = monthYear.split(" ");
        dateComponents[1] = jQuery.trim(dateComponents[1]);
         
        //determine year
        var year = dateComponents[1];
         
        //determine month
        var month = 0;
        for(i=0; i<months.length; i++)
        {
            if(months[i] == dateComponents[0])
            {
                month = i;
                break;
            }
        }
         
        //set day of month
        var dayOfMonth = 1;
         
        //create date object
        var xDate = new Date(year, month, dayOfMonth);
		
		return xDate;

}