<?php
// read_student_by_id.php
$id = $_GET['id'];
// $servername = "localhost";
// $username = "it";
// $password = "smit#1234";
// $dbname = "it";
// // Create connection
// $con = mysqli_connect($servername, $username, $password, $dbname);
// // Check connection
// if (!$con) {
//     die("Connection failed: " . mysqli_connect_error());
// }
require_once('db_connect.php');

$sql = "select * from student where id='$id'";

// $sql = "select * from student ";
// echo $sql . '<br>';

//execute the sql query
$result = mysqli_query($con, $sql);
// $row = mysqli_fetch_array($result);
$row = mysqli_fetch_assoc($result);
// $row = mysqli_fetch_all($result, MYSQLI_NUM);

// echo '<pre>';
// print_r($row);
// echo '</pre>';
mysqli_close($con);
?>

<!doctype html>
<html lang="en">

<head>
    <title>Read Student</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>
    <div class="container">
        <h1>Student Details for ID: <?= $id ?></h1>
        <?php
        foreach ($row as $key => $value) {
            echo "$key ----- $value<br>";
        }
        ?>
        <div class="row">
            <div class="col-6">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Key</th>
                            <th>Value</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        foreach ($row as $key => $value) {
                        ?>
                            <tr>
                                <td scope="row"><?= $key ?></td>
                                <td><?= $value ?></td>
                            </tr>
                        <?php
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>

    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>