<?php

$servername = "one-mysql:3306";
$username = "root";
$password = "kS4pKJF_3kfdsfOoJ";
$dbname = "ccloud";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
$conn->query("set names utf8");
// Check connection
if ($conn->connect_error) {
    echo "Connect db error.";
    die("Connection failed: " . $conn->connect_error);
} 
$result = $conn->query("SELECT COUNT(*) FROM wp_termmeta");
$rows = $result->fetch_row();
$batches = $rows[0] / 2500;
$smt = $conn -> prepare('UPDATE wp_termmeta SET meta_value=? WHERE meta_id=?');

for ($i = 0; $i <= $batches; $i++) {
	$offset = $i * 2500;
	$result = $conn->query("SELECT * FROM wp_termmeta LIMIT 2500 OFFSET ".$offset);
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			$us = @unserialize($row["meta_value"]);
			if ($us !== false) {
				$meta_value = json_encode($us, JSON_UNESCAPED_UNICODE);
				$meta_id = $row["meta_id"];
				$smt->bind_param('si', $meta_value, $meta_id);
				if ($smt->execute()) {
					echo "Success"."\r\n";
				} else {
					echo "Error: ".$conn->error."\r\n";
					exit();
				}
			}
		}
	} else {
		echo "0 results";
	}
}
$smt->close();
$result->close();
$conn->close();
?>