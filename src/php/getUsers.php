<?php
include("db.php");
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST');
$login = $_POST['login'];
$haslo = $_POST['haslo'];

$sql = "SELECT id,login,haslo FROM `użytkownicy` WHERE login = \"$login\" AND haslo = \"$haslo\";";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    // output data of each row
    while ($row = $result->fetch_assoc()) {
        echo "Zalogowano";
    }
} else {
    echo "0 results";
}
$conn->close();
