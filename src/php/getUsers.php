<?php
include("db.php");
$sql = "SELECT id,login,haslo FROM `użytkownicy` WHERE login = \"Chuj\" AND haslo = \"Chuj\";";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    // output data of each row
    while ($row = $result->fetch_assoc()) {
        echo "id: " . $row["id"] . " - login: " . $row["login"] . " - haslo: " . $row["haslo"] . "<br>";
    }
} else {
    echo "0 results";
}
$conn->close();
