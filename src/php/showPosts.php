<?php
include("db.php");
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST');

$posty = [];
$post = ['id' => [], 'imie' => [], 'nazwisko' => [], 'tresc' => []];
$sql = "SELECT p.id,imie,nazwisko,treść FROM posty p JOIN użytkownicy u ON p.id_użytkownika = u.id;";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $post = ['id' => $row['id'], 'imie' => $row["imie"], 'nazwisko' => $row["nazwisko"], 'tresc' => $row["treść"]];
        array_push($posty, $post);
    }
}
$json = json_encode($posty);
// var_dump($posty);
echo $json;
