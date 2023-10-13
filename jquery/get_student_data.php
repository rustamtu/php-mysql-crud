<?php
$id = $_GET['id'];
$servername = "localhost";
$username = "it";
$password = "smit#1234";
$dbname = "it";
// Create connection
$con = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "select * from student where id='$id'";

// $sql = "select * from student ";
// echo $sql . '<br>';

//execute the sql query
$result = mysqli_query($con, $sql);
$row = mysqli_fetch_array($result);
// $row = mysqli_fetch_assoc($result);
// $row = mysqli_fetch_all($result, MYSQLI_NUM);
// echo '<pre>';
// print_r($row[1]);
// echo '</pre>';
mysqli_close($con);

$data = [
    'id' => $id,
    'status' => 1,
    'student' =>  $row,
];

echo json_encode($data);
