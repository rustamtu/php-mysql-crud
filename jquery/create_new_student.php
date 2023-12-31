<!doctype html>
<html lang="en">

<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>
    <?php
    $row = array();
    ?>
    <div class="container">
        <h1>Create New Student</h1>
        <div class="row">
            <div class="col-6">
                <form action="create_new_student_submit.php" method="post">
                    <input hidden type="text" name="id" value="<?= $row['id'] ?>" id="mid">
                    <div class="form-group">
                        <label for="regno">RegNo</label>
                        <input type="text" class="form-control" name="regno" id="regno" value="<?= $row['regno'] ?>" aria-describedby="helpIdregno" placeholder="">
                        <small id="helpIdemail" class="form-text text-muted">Enter Reg No.</small>
                    </div>
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" name="name" id="name" value="<?= $row['name'] ?>" aria-describedby="helpIdname" placeholder="">
                        <small id="helpIdname" class="form-text text-muted">Enter name</small>
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" class="form-control" name="email" id="email" value="<?= $row['email'] ?>" aria-describedby="helpIdemail" placeholder="">
                        <small id="helpIdemail" class="form-text text-muted">Enter Email</small>
                    </div>

                    <button type="submit" id="btnSave" class="btn btn-primary">Save</button>
                </form>
            </div>
            <div class="col-6"></div>
        </div>

    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>