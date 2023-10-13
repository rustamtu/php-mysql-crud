<!DOCTYPE html>
<html>

<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

</head>

<body>
    Student ID:
    <input type="text" id="id" name="id" /><br>
    <button>Get Student Data</button>
    <div id="stdent_details">

    </div>

    <script>
        $(document).ready(function() {
            $("button").click(function() {
                var id = $('#id').val();
                // alert("ID= " + id);
                $.get("get_student_data.php?id=" + id, function(data, status) {
                    console.log(data);
                    alert("Data: " + data + "\nStatus: " + status);
                    const data_obj = JSON.parse(data);
                    console.log(data_obj);
                    if (data_obj.student) {
                        var div_id = $('#stdent_details').html(
                            "<h1>Stdent Dtails</h1>" +
                            "ID: " + data_obj.student.id + '<br>' +
                            "Name: " + data_obj.student.name + '<br>' +
                            "Email: " + data_obj.student.email + '<br>'
                        );
                    } else {
                        var div_id = $('#stdent_details').html("<h3>No record found</h3>");
                    }
                });
            });
        });
    </script>
</body>

</html>