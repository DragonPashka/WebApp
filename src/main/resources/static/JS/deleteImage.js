
$(document).on('keydown', '#gallery img.images', function(event)
{
   
    var fullPath = this.src;            
    var filename = fullPath.replace(/^.*[\\\/]/, '');
    if (event.keyCode === 46)
    {  
        $("#pictures").load( "/delete #gallery", { "name": filename} );               
    }
            
       
})


	    	
            
	    
	    