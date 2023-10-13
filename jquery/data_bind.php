<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

$servername = "localhost";
$username = "it";
$password = "smit#1234";
$dbname = "it";

// $id = $_POST['id'];
// $name = $_POST['name'];
// $email = $_POST['email'];
// $regno = $_POST['regno'];

$id = 1;
$name = 'Anubhab Ghosh';
$email = "abcd.ppp@gmail.com";
$regno = "123123";

// data bind method
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    // die("Connection failed: " . $conn->connect_error);
    echo 'Error';
    print_r($conn->connect_error);
    exit(0);
}

// prepare and bind
// set parameters and execute
// $firstname = "John";
// $lastname = "Doe";
// $email = "john@example.com";


$stmt = $conn->prepare("update student 
                    set name=?,
                     regno=?,
                     email=?
                    where id= ? ");
$stmt->bind_param("ssss", $name, $regno, $email, $id);


// $stmt = $conn->prepare("INSERT INTO student (name, regno, email) VALUES (?, ?, ?)");
// $stmt->bind_param("sss", $name, $regno, $email);

$stmt->execute();
$stmt->close();

$data = [
    'id' => $id,
    'status' => 1,
    'message' => "Updated successfully",
];

echo json_encode($data);
// echo json_encode($_POST);
