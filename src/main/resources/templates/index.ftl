<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<title>Website</title>
<!-- Add CSS -->
<link rel="stylesheet" href="/CSS/main.css">
<link rel="stylesheet" href="/CSS/menu.css">
<link rel="stylesheet" href="/CSS/center.css">

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
	<main>
		<div class="main">
			<#list posts as post>
				<div class="name">
					<h1>${post.header}</h1>
					<p>${post.text}</p>
					<hr size="3"/>
				</div>
			</#list>
		</div>
	</main>

	<!-- <script src="js/script.js"></script> -->
</body>
</html>