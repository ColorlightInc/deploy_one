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
$result = $conn->query("SELECT COUNT(*) FROM wp_options");
$rows = $result->fetch_row();
$batches = $rows[0] / 2500;
$smt = $conn -> prepare('UPDATE wp_options SET option_value=? WHERE option_id=?');

for ($i = 0; $i <= $batches; $i++) {
	$offset = $i * 2500;
	$result = $conn->query("SELECT * FROM wp_options LIMIT 2500 OFFSET ".$offset);
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			$us = @unserialize($row["option_value"]);
			if ($us !== false) {
				$option_value = json_encode($us, JSON_UNESCAPED_UNICODE);
				$option_id = $row["option_id"];
				$smt->bind_param('si', $option_value, $option_id);
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