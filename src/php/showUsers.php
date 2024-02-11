<?php
include("db.php");
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST');
$id = $_POST['id'];

$users = [];
$sql = "SELECT * FROM `użytkownicy` WHERE id != $id;";
$result = $conn->query($sql);
while ($row = $result->fetch_assoc()) {
    $user = ['id' => $row['id'], 'imie' => $row["imie"], 'nazwisko' => $row["nazwisko"]];
    array_push($users, $user);
}
$json = json_encode($users);
// var_dump($posty);
echo $json;
