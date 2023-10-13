<!DOCTYPE html>
<html>

<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script>
        $(document).ready(function() {
            $("button").click(function() {
                $.get("demo_test.php", function(data, status) {
                    console.log(data);
                    alert("Data: " + data + "\nStatus: " + status);
                });
            });
        });
    </script>
</head>

<body>

    <button>Send an HTTP GET request to a page and get the result back</button>

</body>

</html>