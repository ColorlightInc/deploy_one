<?php

$servername = "one-mysql:3306";
$username = "root";
$password = "colorlight";
$dbname = "spring";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
$conn->query("set names utf8");
// Check connection
if ($conn->connect_error) {
    echo "Connect db error.";
    die("Connection failed: " . $conn->connect_error);
}
echo "==================== start to parse _terminal_group meta into table wp_group_program ======================";
$result = $conn->query("SELECT COUNT(*) FROM wp_postmeta where meta_key = '_terminal_group'");
$rows = $result->fetch_row();
$batches = $rows[0] / 2500;
$rowgroupcount = 0;
for ($i = 0; $i <= $batches; $i++) {
        $offset = $i * 2500;
        $result = $conn->query("SELECT * FROM wp_postmeta where meta_key = '_terminal_group'  LIMIT 2500 OFFSET ".$offset);
        echo "_terminal_group iterate".$i."times";
        if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                        $meta_key = $row["meta_key"];
                        if (strcmp($meta_key,"_terminal_group" )==0) {
                                $rowgroupcount++;
                                $post_id = $row["post_id"];
                                $meta_value = $row["meta_value"];
                                echo $meta_value. "\n\r";
                                if(empty($meta_value)){
                                        continue;
                                }
                                $valuearr =  json_decode($meta_value);
                                $idcount = count($valuearr);
                                for($j=0;$j<$idcount;$j++){
                                        $insertresult = $conn->query("INSERT INTO wp_group_program(groupId, programId) VALUES(".$valuearr[$j] ."," .$post_id. ")");
                                        if($insertresult){
                                                echo "insert success, groupId :".$valuearr[$j] .", programId :" .$post_id."\n\r" ;

                                        }
                                }
                        }
                }
        } else {
                echo "0 results";
        }
}
echo "==================== parse _terminal_group meta into table wp_group_program completed======================";

echo "==================== start to parse _terminal_led meta into table wp_terminal_program ======================";
$result = $conn->query("SELECT COUNT(*) FROM wp_postmeta where meta_key = '_terminal_led'");
$rows = $result->fetch_row();
$batches = $rows[0] / 2500;
$rowterminalcount = 0;

for ($i = 0; $i <= $batches; $i++) {
        $offset = $i * 2500;
        $result = $conn->query("SELECT * FROM wp_postmeta where  meta_key = '_terminal_led' LIMIT 2500 OFFSET ".$offset);
        echo "_terminal_led iterate".$i."times";

        if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                        $meta_key = $row["meta_key"];
                         if (strcmp($meta_key,"_terminal_led" )==0) {
                                $rowterminalcount++;
                                $post_id = $row["post_id"];
                                $meta_value = $row["meta_value"];
                                if(empty($meta_value)){
                                        continue;
                                }

                                $valuearr =  json_decode($meta_value);
                                $idcount = count($valuearr);
                                for($j=0;$j<$idcount;$j++){
                                        $insertresult = $conn->query("INSERT INTO wp_terminal_program(terminalId, programId) VALUES(".$valuearr[$j] ."," .$post_id. ")");
                                        if($insertresult){
                                                echo "insert success, terminalId :".$valuearr[$j] .", programId :" .$post_id."\n\r" ;

                                        }
                                }
                        }
                }
        } else {
                echo "0 results";
        }
}
echo "==================== parse _terminal_group meta into table wp_terminal_program completed======================";
echo "postmeta rowgroupcount = ".$rowgroupcount."\n\r";
echo "postmeta rowterminalcount = ".$rowterminalcount."\n\r";
$result->close();
$conn->close();
?>
