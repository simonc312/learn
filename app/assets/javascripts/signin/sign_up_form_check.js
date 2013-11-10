if(jQuery().validate) {
    //jQuery plugin exists

$('#new_user').validate({

  rules: {
    "user[email]":{ 
	required:true,
	email:true
    },
    "user[password]":{
        required:true,
	rangelength:[8,16]
    },
    "user[password_confirmation]":{
	equalTo:'#user[password]'
    }
  }, //end of rules

  messages: {
  	"user[password]": {
   		required: "Please type the password you'd like to use.",
   		rangelength: "Your password must be between 8 and 16 characters long."
  	},
  	"user[password_confirmation]": {
    		equalTo: "The two passwords don't match."
  	}
  }, //end of messages
    onfocusout: true
});




} else {
    //jQuery plugin DOES NOT exist

   alert("Plugin failed");
}


