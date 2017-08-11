<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>登录</title>
<link rel="stylesheet" type="text/css" href="${request.contextPath}/static/css/page/user/login/styles.css">
</head>
<body>
<div class="htmleaf-container">
	<div class="wrapper">
		<div class="container">
			<h1>Welcome</h1>

			<form class="form" id="login" action="${request.contextPath}/login/login">
				<input type="text" placeholder="Username" name="userName">
				<input type="password" placeholder="Password" name="password">
				<button type="submit" id="login-button">Login</button>
			</form>
		</div>

		<ul class="bg-bubbles">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>
</div>

<script src="${request.contextPath}/static/js/jquery-2.0.3.min.js" type="text/javascript"></script>
<script>
$('#login-button').click(function (event) {
	document.getElementById("login").submit();
	$('.wrapper').addClass('form-success');
});
</script>

<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';color:#000000">
<h1>数据管理系统</h1>
</div>
</body>
</html>