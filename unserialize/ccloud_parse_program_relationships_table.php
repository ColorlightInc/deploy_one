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

$result = $conn->query("SELECT COUNT(*) FROM wp_postmeta where meta_key = '_terminal_group'");
$rows = $result->fetch_row();
$batches = $rows[0] / 2500;
$rowgroupcount = 0;
for ($i = 0; $i <= $batches; $i++) {
        $offset = $i * 2500;
        $result = $conn->query("SELECT * FROM wp_postmeta where meta_key = '_terminal_group'  LIMIT 2500 OFFSET ".$offset);
        echo "FUCK".$i."YOU";
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
                                if (startwith($meta_value, "{")) {
                                    $valueobj =  json_decode($meta_value);
                                    foreach($valueobj as $key => $obj_value) {
                                        $insertresult = $conn->query("INSERT INTO wp_group_program(groupId, programId) VALUES(".$obj_value ."," .$post_id. ")");
										if($insertresult){
											echo "insert success, groupId :".$obj_value .", programId :" .$post_id."\n\r" ;
										}
                                    }
                                    continue;
                                }

                                $valuearr =  json_decode($meta_value);

                                $idcount = count($valuearr);
                                for($j=0;$j<$idcount;$j++){
                                        $insertresult = false;
                                        if(is_int($valuearr[$j])){

                                            $insertresult = $conn->query("INSERT INTO wp_group_program(groupId, programId) VALUES(".$valuearr[$j] ."," .$post_id. ")");
											if($insertresult){
													echo "insert success, groupId :".$valuearr[$j] .", programId :" .$post_id."\n\r" ;

											}
										} else if(is_object($valuearr[$j])){
                                            $value = $valuearr[$j]->id;
                                            if(is_int($value)){
												$insertresult = $conn->query("INSERT INTO wp_group_program(groupId, programId) VALUES(".$value ."," .$post_id. ")");
												if($insertresult){
													echo "insert success, groupId :".$value .", programId :" .$post_id."\n\r" ;

												}
											} else if(is_array($value)){
												for ($k=0; $k < count($value); $k++ ){

													$insertresult = $conn->query("INSERT INTO wp_group_program(groupId, programId) VALUES(".$value[$k] ."," .$post_id. ")");
													if($insertresult){
														echo "insert success, groupId :".$value[$k] .", programId :" .$post_id."\n\r" ;

													}
												}
											} else {

												if( startwith($value, "[")){
													$jsonvalue = json_decode($value);
													for ($l=0; $l<count($jsonvalue); $l++){
														$insertresult = $conn->query("INSERT INTO wp_group_program(groupId, programId) VALUES(".$jsonvalue[$l] ."," .$post_id. ")");
														if($insertresult){
														echo "insert success, groupId :".$jsonvalue[$l] .", programId :" .$post_id."\n\r" ;
														}


													}
												} else{
													$stringvalue = intval($value);
													$insertresult = $conn->query("INSERT INTO wp_group_program(groupId, programId) VALUES(".$stringvalue ."," .$post_id. ")");
														if($insertresult){
														echo "insert success, groupId :".$stringvalue .", programId :" .$post_id."\n\r" ;
														}
												}

											}

										}


                                }
                        }
                }
        } else {
                echo "0 results";
        }
}

echo "================================================group end=================";

$result = $conn->query("SELECT COUNT(*) FROM wp_postmeta where meta_key = '_terminal_led'");
$rows = $result->fetch_row();
$batches = $rows[0] / 2500;
$rowterminalcount = 0;

for ($i = 0; $i <= $batches; $i++) {
        $offset = $i * 2500;
        $result = $conn->query("SELECT * FROM wp_postmeta where  meta_key = '_terminal_led' LIMIT 2500 OFFSET ".$offset);
        echo "FUCK".$i."YOU";

        if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                        $meta_key = $row["meta_key"];
                         if (strcmp($meta_key,"_terminal_led" )==0) {
                                $rowterminalcount++;
                                $post_id = $row["post_id"];
                                $meta_value = $row["meta_value"];
								echo $meta_value."\n\r";
                                if(empty($meta_value)){
                                        continue;
                                }
								if (startwith($meta_value, "{")) {
                                    $valueobj =  json_decode($meta_value);
                                    foreach($valueobj as $key => $obj_value) {
                                        $insertresult = $conn->query("INSERT INTO wp_terminal_program(groupId, programId) VALUES(".$obj_value ."," .$post_id. ")");
										if($insertresult){
											echo "insert success, terminalId :".$obj_value .", programId :" .$post_id."\n\r" ;
										}
                                    }
                                    continue;
                                }
                                $valuearr =  json_decode($meta_value);
                                $idcount = count($valuearr);
                                for($j=0;$j<$idcount;$j++){

										 $insertresult = false;
                                        if(is_int($valuearr[$j])){

                                            $insertresult = $conn->query("INSERT INTO wp_terminal_program(terminalId, programId) VALUES(".$valuearr[$j] ."," .$post_id. ")");
											if($insertresult){
													echo "insert success, terminalId :".$valuearr[$j] .", programId :" .$post_id."\n\r" ;

											}
										} else if(is_object($valuearr[$j])){

                                            $value = $valuearr[$j]->id;
                                            if(is_int($value)){
												$insertresult = $conn->query("INSERT INTO wp_terminal_program(terminalId, programId) VALUES(".$value ."," .$post_id. ")");
												if($insertresult){
													echo "insert success, terminalId :".$value .", programId :" .$post_id."\n\r" ;

												}
											} else if(is_array($value)){
												for ($k=0; $k < count($value); $k++ ){

													$insertresult = $conn->query("INSERT INTO wp_terminal_program(terminalId, programId) VALUES(".$value[$k] ."," .$post_id. ")");
													if($insertresult){
														echo "insert success, terminalId :".$value[$k] .", programId :" .$post_id."\n\r" ;

													}
												}
											} else {

												if( startwith($value, "[")){
													$jsonvalue = json_decode($value);
													for ($l=0; $l<count($jsonvalue); $l++){
														$insertresult = $conn->query("INSERT INTO wp_terminal_program(terminalId, programId) VALUES(".$jsonvalue[$l] ."," .$post_id. ")");
														if($insertresult){
														echo "insert success, terminalId :".$jsonvalue[$l] .", programId :" .$post_id."\n\r" ;
														}


													}
												} else{
													$stringvalue = intval($value);
													$insertresult = $conn->query("INSERT INTO wp_terminal_program(terminalId, programId) VALUES(".$stringvalue ."," .$post_id. ")");
														if($insertresult){
														echo "insert success, terminalId :".$stringvalue .", programId :" .$post_id."\n\r" ;
														}
												}

											}

										}
                                }
                        }
                }
        } else {
                echo "0 results";
        }
}
echo "postmeta rowgroupcount = ".$rowgroupcount."\n\r";
echo "postmeta rowterminalcount = ".$rowterminalcount."\n\r";
$result->close();
$conn->close();



function startwith($str,$pattern) {
    if(strpos($str,$pattern) === 0)
          return true;
    else
          return false;
}
?>
