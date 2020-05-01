<?php

//  This is the file which connects to database, including this file in the next files will give database connection.
// We have used phpmyadmin as our database server
$con= new mysqli('localhost','root','','project')or die("Could not connect to mysql".mysqli_error($con));

?>