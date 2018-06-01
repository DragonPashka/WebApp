var images=document.getElementById('gallery').getElementsByClassName('images')

for (var i=0; i< images.length; i++)
{
    (function(index)
     {
        images[index].addEventListener("keydown", function(event)
        {
            alert(event.keyCode);
            //getContentForUpdate();
            var fullPath = images[index].src;            
            var filename = fullPath.replace(/^.*[\\\/]/, '');
            document.getElementById("nameOfFile").value = filename;
            if (event.keyCode === 46)
            {                
                document.getElementById('deleteForm').submit();
                var iframe = document.getElementById('GalleryFrame');

                iframe.src = iframe.src;
            }
        })
    })(i);
}



	    	
	    	
            
	    
	    