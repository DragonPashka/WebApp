var filename;

//Added eventListener for select image
$(document).mouseup(function (event)
{
    var images = $("#gallery");
    if (images.has(event.target).length != 0 )
    {
        if (event.target.className === "images")
        {
            document.getElementById("deleteImage").style.display = "block"; 
            var fullPath = event.target.src;
            filename = fullPath.replace(/^.*[\\\/]/, ''); 
        }
        if (event.target.id === "deleteImage")
        {
            document.getElementById("deleteImage").style.display = "block"; 
        }
    }
    else
    {
        document.getElementById("deleteImage").style.display = "none"; 
    }
});


//Added eventListener for pressing the "del" button
$(document).on('keydown', '#gallery img.images', function(event)
{    
    if (event.keyCode === 46)
    {  
        deleteImage();
    }      
})

//Added function for click "Удалить" button
$(document).on('click', '#deleteImage', function(event)
{
     deleteImage();
        
})


//Added function for delete image
function deleteImage()
{
    $("#pictures").load( "/delete #gallery", { "name": filename} );       
    document.getElementById("deleteImage").style.display = "none"; 
    return false;
}


	    	
            
	    
	    