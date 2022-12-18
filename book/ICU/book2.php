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

$hospital_name = ($row["hospital_name"]);


$icu_bad = 1;


$new_icu = $available_icu_beds - $icu_bad;

$sql6 = "UPDATE `hospital_info` SET `available_icu_beds` = '$new_icu' WHERE `hospital_info`.`hospital_id` = '$hospital_id'";
$result6 = mysqli_query($con, $sql6);

$occupied_icu = $Total_icu_beds - $available_icu_beds;

$sql54 = "UPDATE `hospital_info` SET `occupied_icu_bed` = '$occupied_icu' WHERE `hospital_info`.`hospital_id` = '$hospital_id'";
$result54 = mysqli_query($con, $sql54);

$sql10 = "UPDATE `hospital_info` SET `last_updated` = current_timestamp() WHERE `hospital_info`.`hospital_id` = '$hospital_id'";
$result10 = mysqli_query($con, $sql10);

$new_occupied = $occupied_icu_beds + $occupied_emergency_beds + $occupied_icu;

$sql47 = "UPDATE `hospital_info` SET `occupied_bed` = '$new_occupied' WHERE `hospital_info`.`hospital_id` = '$hospital_id'";
$result47 = mysqli_query($con, $sql47);

$new_Available = $available_icu_beds + $available_general_bad + $available_emergency_bad;

$sql80 = "UPDATE `hospital_info` SET `available_bad` = '$new_Available' WHERE `hospital_info`.`hospital_id` = '$hospital_id'";
$result80 = mysqli_query($con, $sql80);

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <title>Booking</title>
</head>

<body>
    <div class="container">
        <h1 class="display-5 fw-bold mt-4">Booking Details</h1>
        <table id="myTable" class="table  table-striped table-bordered border-secondary table-hover border-4 mt-5">
            <thead class="tableHead bg-dark text-light">
                <tr>
                    <th>User Name</th>
                    <th>Contact</th>
                    <th>Address</th>
                    <th>Email</th>
                    <th>Bed type</th>
                    <th>hospital name</th>
                    <th>Book</th>
                    <th>Cancel</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $sql = "SELECT * FROM `user_info` WHERE username = '$uname'";
                $result = mysqli_query($con, $sql);
                $general = 'available_general_bad';
                if ($row = mysqli_fetch_assoc($result)) {
                    echo "<tr>
                            <td>" . $row['username'] . "</td>
                            <td>" . $row['phonenumber'] . "</td>
                            <td>" . $row['address'] . "</td>
                            <td>" . $row['email'] . "</td>
                            <td>" . 'General bed' . "</td>
                            <td>" . "$id" . "</td>
                            <td>" . 'Booked' . "</td>
                            <td><a class='btn btn-danger' href='cancle2.php?id=" .  $row['username']  . "'>" . "Cancel" . "</a></td>
                          </tr>";
                }
                ?>
            </tbody>
        </table>
    </div>
</body>

</html>