<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Учет нарушений ПДД</title>
		<style>
		body {
			background:url(../src/fon1.jpg);
			background-size: cover;
		}	
	</style>
	<link rel="stylesheet" href="style/style.css">
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,800,900" rel="stylesheet">
	<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<body>

	<div class="main">
	

		<ul id="slides">
    <li class="slide showing">Добро</li>
    <li class="slide">Пожаловать</li>
    <li class="slide">На лучший</li>
    <li class="slide">Сайт</li>
    <li class="slide">По проверке штрафов</li>
</ul>

		<div class="buttons-block">
			<div class="button" id="bd" onClick="bd()">База данных</div>
			<div class="button" id="pdd" onClick="pdd()" >Штрафы ПДД</div>
			<div class="button" id="sbd" onClick="adm_enter()">Админка</div>
		</div>


		<div class="block1">
			<div class="headr">
				<center><label for="input">Проверка штрафов ГИБДД</label></center>
			</div>

	<div class="block2">
		<label for="nomer">Введите гос.номер:</label>
		<br><br><br><br>
		<label for="strahovka">Номер страховки:</label>
	</div>
	

	<div class="block3">

			<div id="nomer_input">
				<div><input type="text" id="nomer" placeholder="A000AA" ></div>
				<div><input type="text" id="region" placeholder="777" ></div>
			</div>
			<br><br>
					<div id="strahovka_input">
						<input type="text" id="strahovka" placeholder="99АА999999"  >
					</div>

	</div>		
				<div class="footer"><div class="button" id="proverka" onClick="proverka()">Проверить</div></div>
				
	</div>


				<script>
						   localStorage.setItem('adminka', '0');
				</script>
			<div class="conteiner" style="display:none;" id="conteiner">


				<table align="center">
			
		<tr>
			<td><div class="adm_label">
			<label for="adm_login">Логин администратора:</label>
			<br><br>
			<label for="adm_pass">Пароль администратора:</label>
		</div>
		</td>

		<td><div class="adm_buttons">
			<br><br><br>
			<input type="text" id="adm_login">
			<br><br>
			<input type="password" id="adm_pass">
			<br><br>
			<div class="button" id="adm_enter" onClick="adm_login()">Вход</div>
		</div>
</td>
		
		</tr>

</table>
</div>




	<script src="script/script.js"></script>
</body>
</html>

