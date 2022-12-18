<?php
    include '../../Database/db.php';

    $id = $_GET['id'];

    $sql = "UPDATE `user_info` SET `booked` = '' WHERE `username`='$id'"; 
    $result = mysqli_query($con, $sql);

    if (mysqli_query($con, $sql)) {
            mysqli_close($con);
            header('Location: ../../user/user_index.php'); 
            exit;
    }
    else{
        echo "Error deleting record";
    }
