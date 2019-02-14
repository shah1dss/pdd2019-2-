<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>База данных</title>
	<link rel="stylesheet" href="style/style.css">
	<?php  include("script/link_bd.php");?>
</head>
<body>
	<style>
		.block_show{
			display: flex;
			justify-content: space-around;
		}
		.block_show > div {
			border: 1px dashed black;
			padding: 10px;
		}
		.show_vid_narush{
			margin: 20px 20px;

			border: 1px dashed black;
		}
		h3 {
			text-align: center;
		}
	</style>
<div class="block_show">
		<div class="show_avto">
		<h3>Вывод таблицы "Автомобили"</h3>
<table>
	<tr>
	<td>kod_avto</td>
	<td>model</td>
	<td>gos_nomer</td>
	<td>strahovka</td>
</tr>

<?php 
	$sql = "SELECT * FROM  `avto`";
	$result = $connection->query($sql);
	while ($row=$result->fetch()) {
	$kod_avto[$i]=	$row ['kod_avto'];
	$model[$i]=	$row ['model'];
	$gos_nomer[$i]=	$row ['gos_nomer'];
	$strahovka[$i]=	$row ['strahovka'];
	echo "<tr><td>".$kod_avto[$i]."</td>
 	<td>",$model[$i],"</td>
	<td>",$gos_nomer[$i],"</td>
	<td>",$strahovka[$i],"</td>
	</tr>";

	}

 ?>
	</table>
	</div>
	
	<div class="show_drivers">
		<h3>Вывод таблицы "Водилы"</h3>
<table>
	<tr>
	<td>kod_avto</td>
	<td>surname</td>
	<td>name</td>
	<td>fathername</td>
	<td>pasport</td>
</tr>

<?php 
	$sql = "SELECT * FROM  `drivers`";
	$result = $connection->query($sql);
	while ($row=$result->fetch()) {
	$kod_avto[$i]=	$row ['kod_avto'];
	$surname[$i]=	$row ['surname'];
	$name[$i]=	$row ['name'];
	$fathername[$i]=	$row ['fathername'];
	$pasport[$i]=	$row ['pasport'];
	echo "<tr><td>".$kod_avto[$i]."</td>
 	<td>",$surname[$i],"</td>
	<td>",$name[$i],"</td>
	<td>",$fathername[$i],"</td>
	<td>",$pasport[$i],"</td>
	</tr>";

	}

 ?>
	</table>
	</div>

	<div class="show_narusheniya">
		<h3>Вывод таблицы "Обстоятельства нарушения"</h3>
<table>
	<tr>
	<td>kod_avto</td>
	<td>id_avto</td>
	<td>data</td>
	<td>time</td>
	<td>place</td>
</tr>

<?php 
	$sql = "SELECT * FROM  `narusheniya`";
	$result = $connection->query($sql);
	while ($row=$result->fetch()) {
	$kod_avto[$i]=	$row ['kod_avto'];
	$id_narush[$i]=	$row ['id_narush'];
	$data[$i]=	$row ['data'];
	$time[$i]=	$row ['time'];
	$place[$i]=	$row ['place'];
	echo "<tr><td>".$kod_avto[$i]."</td>
 	<td>",$id_narush[$i],"</td>
	<td>",$data[$i],"</td>
	<td>",$time[$i],"</td>
	<td>",$place[$i],"</td>
	</tr>";

	}

 ?>
	</table>
	</div>


</div>
		<div class="show_vid_narush">
		<h3>Вывод таблицы "Нарушения"</h3>
<table style="width: 100%">
	<tr>
	<td>id_narush</td>
	<td>state_narush</td>
	<td>name_narush</td>
	<td>price</td>
</tr>

<?php 
	$sql = "SELECT * FROM  `vid_narush`";
	$result = $connection->query($sql);
	while ($row=$result->fetch()) {
	$id_narush[$i]=	$row ['id_narush'];
	$state_narush[$i]=	$row ['state_narush'];
	$name_narush[$i]=	$row ['name_narush'];
	$price_narush[$i]=	$row ['price_narush'];
	echo "<tr><td>".$id_narush[$i]."</td>
 	<td>",$state_narush[$i],"</td>
	<td>",$name_narush[$i],"</td>
	<td>",$price_narush[$i],"</td>
	</tr>";

	}

 ?>
	</table>
	</div>


</body>
</html>