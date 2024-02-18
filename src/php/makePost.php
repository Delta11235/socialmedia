<?php
include("db.php");
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST');
$tresc = $_POST['tresc'];
$id_u = $_POST['id'];
// $tresc = "a";
// $id_u = 2;
$sql = "INSERT INTO posty (treść, id_użytkownika) VALUES ('$tresc','$id_u');";
// echo $sql;
$conn->query($sql);
