

$(document).on('submit', '#uploadForm', function(event)
{    
    event.preventDefault();
    addImage();
    

    return false;
    
})

function addImage()
{
    var files= document.getElementById("uploadForm").getElementsByTagName("input")[0].files;
    var data = new FormData();

    for(var i=0;i<files.length;i++)
    {
        data.append('files', files[i]);
    }
    var xhr = new XMLHttpRequest();
    xhr.upload.onload  = function()
    {
       setTimeout(function(){ $("#pictures").load( "/Add #gallery");}, 500);  
       
    }    
    xhr.open('POST', '/upload', true);
    xhr.send(data);
    
    
}