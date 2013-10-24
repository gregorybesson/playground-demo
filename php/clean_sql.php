<?php 

echo "update sql \n";
$params = $argv;

$fileSql =  $params[1];

if(!file_exists($fileSql)){
    echo "Unable to load sql file ! ";
    exit(-1);
}

$sql = file_get_contents($fileSql);

$sql = str_replace(array("DELIMITER //","//","DELIMITER ;"), array("",";",""), $sql);

file_put_contents($fileSql, $sql);
?>