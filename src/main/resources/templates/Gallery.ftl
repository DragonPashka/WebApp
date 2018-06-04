<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<title>Website</title>
</head>
<body>
	<div id="gallery" data-text="Здесь должны быть картинки">
				<h2>Картинки для перетаскивания в статью</h2>
				<#list images as image>
					<img border="3" class="images" src=${image} alt="Картинка не прогрузилась" tabindex="0">				
				</#list>
				<form id="uploadForm" action="/upload" enctype="multipart/form-data" method="post" target='Gallery'>
				   <p>Загрузите ваши фотографии на сервер</p>			   	
				   <p><input type="file" name="file" multiple accept="image/*,image/jpeg"></p>				   
				   <p><input type="submit" value="Отправить"></p>
	  			</form>
	  			<form id="deleteForm" action="/delete" enctype="multipart/form-data" method="post" target='Gallery' onSubmit="window.location.reload()">
	  			   <input type="text" name="name" id="nameOfFile" style="display:none"/> 
	  			    <p><input type="submit" value="Удалить файл"></p>	 			
				   
	  			</form>					
	</div>			
	<script src="/JS/deleteImage.js"></script>

</body>
</html>