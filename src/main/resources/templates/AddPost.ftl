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
			<a class="navbar-logo" href=""><img
				src="https://html5book.ru/wp-content/uploads/2017/04/lily-logo.png"></a>
		</nav>
	</header>

	<article>
		<h1 id="header" contentEditable="true" data-text="Введите заголовок статьи"></h1>
		<div id="form">
			<div id="content" contentEditable="true" onresizestart="true" data-text="Введите текст статьи"></div>
			<form action="/Get" method="POST" onsubmit="getContent()">
				<input type="text" name="head" id="head" style="display:none"/>
				<input type="text" name="text" id="text" style="display:none"/>
		    	<input type="submit" value="Сохранить"/>
			</form>	
			
		</div>
		<iframe name='Gallery' id="GalleryFrame"  src="/Gallery">				
		</iframe>			
		
	</article>	
	
	
	

	<!-- <script src="js/script.js"></script> -->
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</body>
</html>