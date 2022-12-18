<?php
session_start();
include '../../Database/db.php';

$uname = ($_SESSION['username']);
$id = $_GET['id'];
$booked = 'BOOKED';

$sql = "UPDATE `user_info` SET `booked` = '$booked' WHERE `username`='$uname'";
$result = mysqli_query($con, $sql);

$sql2 = "SELECT * FROM `hospital_info` WHERE hospital_name ='$id'";
$result2 = mysqli_query($con, $sql2);
$row = mysqli_fetch_array($result2);
$hospital_id = ($row['hospital_id']);

$beds = ($row["beds"]);
$available_bad = ($row["available_bad"]);
$Total_emergency_beds = ($row["Total_emergency_beds"]);
$available_emergency_bad = ($row["available_emergency_bad"]);
$Total_icu_beds = ($row["Total_icu_beds"]);
$available_icu_beds = ($row["available_icu_beds"]);
$Total_general_beds = ($row["Total_general_beds"]);
$available_general_bad = ($row["available_general_bad"]);
$occupied =  ($row["occupied_bed"]);
$occupied_icu_beds = ($row["occupied_icu_bed"]);
$occupied_emergency_beds = ($row["occupied_emergency_bed"]);
$occupied_general_beds = ($row["occupied_general_bed"]);

$sql = "UPDATE `user_info` SET `booked` = '' WHERE `username`='$id'";
$result = mysqli_query($con, $sql);

$general_bad = 2;
$new_general = $available_general_bad + $general_bad;

$sql6 = "UPDATE `hospital_info` SET `available_general_bad` = '$new_general' WHERE `hospital_info`.`hospital_id` = '$hospital_id'";
$result6 = mysqli_query($con, $sql6);

$occupied_general = $Total_general_beds - $available_general_bad;

$sql54 = "UPDATE `hospital_info` SET `occupied_general_bed` = '$occupied_general' WHERE `hospital_info`.`hospital_id` = '$hospital_id'";
$result54 = mysqli_query($con, $sql54);

$sql10 = "UPDATE `hospital_info` SET `last_updated` = current_timestamp() WHERE `hospital_info`.`hospital_id` = '$hospital_id'";
$result10 = mysqli_query($con, $sql10);

$new_occupied = $occupied_icu_beds + $occupied_emergency_beds + $occupied_general_beds;

$sql47 = "UPDATE `hospital_info` SET `occupied_bed` = '$new_occupied' WHERE `hospital_info`.`hospital_id` = '$hospital_id'";
$result47 = mysqli_query($con, $sql47);

$new_Available = $available_icu_beds + $available_general_bad + $available_emergency_bad;

$sql80 = "UPDATE `hospital_info` SET `available_bad` = '$new_Available' WHERE `hospital_info`.`hospital_id` = '$hospital_id'";
$result80 = mysqli_query($con, $sql80);


if (mysqli_query($con, $sql)) {
    mysqli_close($con);
    header('Location: ../../user/user_index.php');
    exit;
} else {
    echo "Error deleting record";
}
