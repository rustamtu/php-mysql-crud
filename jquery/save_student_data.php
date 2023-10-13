<?php
// save_student_data.php
$servername = "localhost";
$username = "it";
$password = "smit#1234";
$dbname = "it";

$id = $_POST['id'];
$name = $_POST['name'];
$email = $_POST['email'];
$regno = $_POST['regno'];

// Create connection
// $con = mysqli_connect($servername, $username, $password, $dbname);
// // Check connection
// if (!$con) {
//     die("Connection failed: " . mysqli_connect_error());
// }
// $sql = "UPDATE student SET 
//             name='$name',
//             regno='$regno',
//             email='$email'
//             where id= '$id'";
// // echo $sql . '<br>';

// // execute the sql query
// $result = mysqli_query($con, $sql);
// mysqli_close($con);



// data bind method
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// prepare and bind
$stmt = $conn->prepare("update student set
                     name=?,
                     regno=?,
                     email=?
                    where id= ?");
$stmt->bind_param("ssss", $name, $regno, $email, $id);

$status = $stmt->execute();
$stmt->close();


if ($status) {
    $data = [
        'id' => $id,
        'status' => $status,
        'posted_data' => $_POST,
        'message' => "Updated successfully",
    ];
} else {
    $data = [
        'id' => $id,
        'status' => $status,
        'posted_data' => $_POST,
        'message' => "Error, not saved",
    ];
}
echo json_encode($data);
// echo json_encode($_POST);
