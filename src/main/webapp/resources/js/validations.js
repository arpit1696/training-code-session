$.validator.addMethod("regex",function(value,element,regexp){
	var re= new RegExp(regexp);
	return this.optional(element)||re.test(value);
});
$("#sign-form").validate({
	rules :
	{
		name:{
			required:true
		},
		
		email:{
		 	 required:true,
			 regex:/^\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b$/i 
			
		},
		password:{
			 required:true,
			 minlength:8,
			 maxlength:20
		},
		
		mobile_number:{
		     required : true,
             maxlength:12,
             minlength: 10	
		}
	},
	messages:
	{
		name:{
			required:"Name required"
			},
		email:{
		    regex:"Enter a valid  email"
		},
		password:{
		    required:"Password required",
		    minlength:"Password must be alteaset 8 characters",
		    maxlength:"Password is too long"
		},
		mobile_number:{
		    required:"Mobile number required",
            maxlength:"Enter a valid number",
            minlength: "Enter a valid number"
		}
	}
});
