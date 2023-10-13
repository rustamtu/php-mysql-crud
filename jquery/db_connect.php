<?php
// $servername = "localhost";
// $username = "it";
// $password = "smit#1234";
// $dbname = "it";
// // Create connection
// $con = mysqli_connect($servername, $username, $password, $dbname);
$con = mysqli_connect('localhost', 'it', 'smit#1234', 'it');
// Check connection
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}
