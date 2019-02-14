<?php 
if($_GET["vhod"]=='1'){
	include("redactorbd.php");
}

include("script/link_bd.php");
if (isset($_GET["login"]) && isset($_GET["password"])) { 

$login = $_GET["login"]; 
$password = $_GET["password"];

$sql = "SELECT * FROM `winrar` WHERE `adm_log` = '".$login."' AND `adm_pas` = '".$password."' "; 

$result = $connection->query($sql); 
$assocArray = $result->fetch(); 
if (($assocArray['adm_log'] == $login) && ($assocArray['adm_pas'] == $password)) { 
print_r("да"); 
} else { 
echo "не"; 
}
}

?>
