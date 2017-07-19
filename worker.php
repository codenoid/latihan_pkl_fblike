<?php
function db($do)
{
    // DB Info
    $servername = "localhost";
    $username = "root";
    $password = "ayam";
    $dbname = "latihan";

    // DO Connect
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);  // customizing PDO
    return $conn->prepare($do);
}

$json = array();
$json["kucing"] = "ikan";
$json["kambing"] = "rumput";

$to_json = json_encode($json);