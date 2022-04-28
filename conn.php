<?php

$conn = mysqli_connect("localhost","root","123456","lunu_laptop_store");

if (!$conn) {
	die("Connection failed: " . mysqli_connect_error());
}
 
?>