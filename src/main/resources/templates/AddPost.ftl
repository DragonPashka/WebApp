<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<title>Website</title>
<!-- Add CSS -->
<link rel="stylesheet" href="/CSS/main.css">
<link rel="stylesheet" href="/CSS/menu.css">
<link rel="stylesheet" href="/CSS/AddPost/left.css">
<link rel="stylesheet" href="/CSS/AddPost/right.css">
<link rel="stylesheet" href="/CSS/Gallery/images.css">



</head>
<body>
	<header>
		<nav class="top-menu">
			<ul class="menu-main">
				<li class="left-item"><a href="">Work</a></li>
				<li class="left-item"><a href="">About</a></li>
				<li class="left-item"><a href="">Story</a></li>
				<li class="right-item"><a href="">Contact</a></li>
				<li class="right-item"><a href="">Shop</a></li>
				<li class="right-item"><a href="">Gallery</a></li>
				
			</ul>
			<a class="navbar-logo" href=""><img	src="https://html5book.ru/wp-content/uploads/2017/04/lily-logo.png"></a>
		</nav>
	</header>

	<article id="newArticle">
		<h1 id="header" contentEditable="true" data-text="Введите заголовок статьи"></h1>
		<div id="form">
			<div id="content" contentEditable="true" onresizestart="true" data-text="Введите текст статьи"></div>
			<form action="/Get" method="POST" onsubmit="getContent()">
				<input type="text" name="head" id="head" style="display:none"/>
				<input type="text" name="text" id="text" style="display:none"/>
		    	<input type="submit" value="Сохранить"/>
			</form>	
			
		</div>
	</article>
	<article id="pictures">		
		<div id="gallery" data-text="Здесь должны быть картинки">
				<h2>Картинки для перетаскивания в статью</h2>
				<#list images as image>
					<img border="3" class="images" src=${image} alt="Картинка не прогрузилась" tabindex="0">				
				</#list>
				<form id="uploadForm" action="/upload" enctype="multipart/form-data" method="post">
				   <p>Загрузите ваши фотографии на сервер</p>			   	
				   <p><input type="file" name="file" multiple accept="image/*,image/jpeg"></p>				   
				   <p><input type="submit" value="Отправить"></p>
	  			</form>
	  			<form id="deleteForm" action="/delete" enctype="multipart/form-data" method="post" >
	  			   <input type="text" name="name" id="nameOfFile" style="display:none"/> 
	  			    <p><input type="submit" value="Удалить файл"></p>			   
	  			</form>					
		</div>					
		
	</article>	
	
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script></body>

	<script src="/JS/deleteImage.js"></script>
</html>