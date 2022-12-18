<?php
include "../Database/db.php";
session_start();

$uname = ($_SESSION['username']);

$sql1="UPDATE `users` SET `logout` = current_timestamp() WHERE `username`='$uname'";
$result1 = mysqli_query($con, $sql1);

$sql2="UPDATE `user_info` SET `logout` = current_timestamp() WHERE `username`='$uname'";
$result2 = mysqli_query($con, $sql2);

session_unset();

session_destroy();

header("location: ../index.php");

exit();

?>