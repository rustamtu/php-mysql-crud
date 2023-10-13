<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Get Data</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="http://172.16.0.12/~raa/jquery/css/bootstrap.min.css">
</head>

<body>
    <?php
    // Get All Student List
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

    // $sql = "select * from student where id='$id'";

    $sql = "select * from student ";
    // echo $sql . '<br>';

    //execute the sql query
    $result = mysqli_query($con, $sql);
    // $row = mysqli_fetch_array($result);
    // $row = mysqli_fetch_assoc($result);
    // $row = mysqli_fetch_all($result, MYSQLI_NUM);

    // while($row = mysqli_fetch_assoc($result))
    // {
    //     echo '<pre>';
    //     print_r($row);
    //     echo '</pre>';
    // }
    mysqli_close($con);

    ?>
    <div class="container">
        <h1>Student List</h1>
        <div class="row">
            <div class="col-4">All Student List</div>
            <div class="col-4"></div>
            <div class="col-4">
                <a href="create_new_student.php" target="_blank" rel="noopener noreferrer">Create New Student</a>
            </div>
        </div>

        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Reg No</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <?php
                while ($row = mysqli_fetch_assoc($result)) {
                ?>
                    <tr>
                        <td class="id"><?= $row['id'] ?></td>
                        <td><?= $row['name'] ?></td>
                        <td><?= $row['email'] ?></td>
                        <td><?= $row['regno'] ?></td>
                        <td>
                            <a target="_blank" href="read_student_by_id.php?id=<?= $row['id'] ?>">Read</a> |
                            <a target="_blank" href="edit_student_by_id.php?id=<?= $row['id'] ?>">Edit</a> |
                            <button type="button" class="btn btn-primary btn-sm edit-by-ajax">
                                Edit by Modal & Ajax
                            </button>
                            <a href="del_student_by_id.php?id=<?= $row['id'] ?>">Delete</a> |
                            <span class="del">Delete by Ajax</span>
                        </td>
                    </tr>
                <?php
                }
                ?>
            </tbody>
        </table>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="modelId" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modal_title"></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <input hidden type="text" name="mid" id="mid">
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" name="name" id="name" aria-describedby="helpIdname" placeholder="">
                        <small id="helpIdname" class="form-text text-muted">Enter name</small>
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" class="form-control" name="email" id="email" aria-describedby="helpIdemail" placeholder="">
                        <small id="helpIdemail" class="form-text text-muted">Enter Email</small>
                    </div>
                    <div class="form-group">
                        <label for="regno">RegNo</label>
                        <input type="text" class="form-control" name="regno" id="regno" aria-describedby="helpIdregno" placeholder="">
                        <small id="helpIdemail" class="form-text text-muted">Enter Reg No.</small>
                    </div>
                    <div id="modal_status" class="text-danger">Status: </div>
                </div>
                <div class="modal-footer">

                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" id="modalSave" class="btn btn-primary">Save</button>
                </div>
            </div>
        </div>
    </div>


    <script src="http://172.16.0.12/~raa/jquery/js/jquery.min.js"></script>
    <!-- <script src="http://172.16.0.12/~raa/jquery/js/jquery.min.js"></script> -->
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script> -->
    <script src="http://172.16.0.12/~raa/jquery/js/popper.min.js"></script>
    <script src="http://172.16.0.12/~raa/jquery/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function() {
            var current_table_row = '';
            $('#modalSave').click(function() {
                // open the modal
                var id = $('#mid').val();
                var name = $('#name').val();
                var email = $('#email').val();
                var regno = $('#regno').val();
                console.log("modalSave action: " + id + " name: " + name + " email: " + email);

                // $.post("postmethod.php", {
                $.post("save_student_data.php", {
                        name: name,
                        email: email,
                        regno: regno,
                        id: id,
                    },
                    function(data, status) {
                        // alert("Data: " + data + "\nStatus: " + status);
                        console.log("Data: " + data + "\nStatus: " + status);
                        current_table_row.find("td:eq(1)").text(name);
                        current_table_row.find("td:eq(2)").text(email);
                        current_table_row.find("td:eq(3)").text(regno);
                        console.log(current_table_row);
                        $('#modal_status').html("Status: Data saved successfully");
                        alert('Data saved successfully');
                    });

            });

            $('.edit-by-ajax').click(function() {
                var id = $(this).closest("tr").find('.id').text();
                current_table_row = $(this).closest("tr");
                var name = current_table_row.find("td:eq(1)").text(); // get current row 2nd TD value
                var email = current_table_row.find("td:eq(2)").text(); // get current row 3rd TD value
                var regno = current_table_row.find("td:eq(3)").text();
                console.log('edit-by-ajax clicked');
                console.log(id + " name: " + name + " email: " + email);
                // open the modal
                $('#mid').val(id);
                $('#name').val(name);
                $('#email').val(email);
                $('#regno').val(regno);
                $('#modal_title').html("Data for ID: " + id);

                $('#modelId').modal('show');
            });

            $(".del").click(function() {
                var id = $(this).closest("tr").find('.id').text();
                var current_table_row = $(this).closest("tr");
                console.log('Del clicked');
                console.log(id);
                $.get("del_student_by_id.php?id=" + id, function(data, status) {
                    console.log(data);
                    // alert("Data: " + data + "\nStatus: " + status);
                    const data_obj = JSON.parse(data);
                    console.log(data_obj);
                    if (data_obj.status) {
                        current_table_row.remove();
                    } else {
                        console.log('Data not deleted');
                    }


                });
            });
        });
    </script>
</body>

</html>