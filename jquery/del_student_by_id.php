<?php
// del_student_by_id.php
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

$sql = "DELETE FROM `student` where id='$id'";
// echo $sql;
//execute the sql query

$result = mysqli_query($con, $sql);
// $status = mysqli_execute_query($conn, $result);

$data = array();
if ($result) {
    $data = [
        'id' => $id,
        'status' => 1,
        'message' =>  "Student with ID $id has been deleted",
    ];
} else {
    $data = [
        'id' => $id,
        'status' => 0,
        'message' =>  "Student with ID $id has not been deleted",
    ];
}
mysqli_close($con);

echo json_encode($data);
