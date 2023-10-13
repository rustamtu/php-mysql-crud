<html>

<body>
    Welcome <?php echo $_POST["name"]; ?><br>
    Your email address is: <?php echo $_POST["email"]; ?>
    <?php
    echo "<pre>";
    print_r($_POST);
    echo "</pre>";
    $servername = "localhost";
    $username = "it";
    $password = "smit#1234";
    $dbname = "it";
    // Create connection
    $conn = mysqli_connect($servername, $username, $password, $dbname);
    // Check connection
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
    $name = $_POST['name'];
    $regno = $_POST['regno'];
    $email = $_POST['email'];
    $city = $_POST['city'];
    $sql = "INSERT INTO student (name, city, email, regno)
        VALUES ('$name', '$city', '$email', '$regno')";
    echo $sql;
    //execute the sql query
    if (mysqli_query($conn, $sql)) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
    mysqli_close($conn);
    ?>
</body>

</html>

<!-- localhost:3306/it/student/		http://172.16.0.12/phpmyadmin/index.php?route=/table/sql&db=it&table=student
Your SQL query has been executed successfully.

describe `student`;

id	bigint(20)	NO	PRI	
    NULL
	auto_increment	
regno	varchar(20)	YES		
    NULL
		
name	varchar(100)	YES		
    NULL
		
dept	varchar(100)	YES		
    NULL
		
email	varchar(100)	YES		
    NULL
		
phone	varchar(50)	YES		
    NULL
		
dob	varchar(30)	YES		
    NULL
		
city	varchar(100)	YES		
    NULL
		
state	varchar(100)	YES		
    NULL
		
date_updated	datetime	NO		current_timestamp()	on update current_timestamp()	 -->