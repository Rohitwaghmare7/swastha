<?php

session_start();

include '../Database/db.php';
$uname = ($_SESSION['username']);
$hospital_name = $_POST["uname"];

$sql2 = "SELECT * FROM `hospitals` WHERE username='$uname'";
$result2 = mysqli_query($con, $sql2);
$row = mysqli_fetch_array($result2);
$hospital_id = ($row['hospital_id']);

$sql_temp = "SELECT * FROM `hospital_info` WHERE hospital_id='$hospital_id'";
$result_temp = mysqli_query($con, $sql_temp);
$row = mysqli_fetch_array($result_temp);

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
$address = ($row["address"]);
$city = ($row["city"]);
$state = ($row["state"]);
$pincode = ($row["pincode"]);
$phonenumber = ($row["phonenumber"]);
$email = ($row["email"]);
$website = ($row["website"]);

$last_updated = date("d/m/Y g:iA", strtotime($row["last_updated"]));

if ($_SERVER["REQUEST_METHOD"] == "POST") {

  if (isset($_POST['submit'])) {

    $available_bad = $_POST["available_bad"];
    if ($available_bad > $beds) {
?>
      <script>
        alert("You can't enter more than Total Beds")
        exit();
      </script>
    <?php
    } else {
      $sql3 = "UPDATE `hospital_info` SET `available_bad` = '$available_bad' WHERE `hospital_info`.`hospital_id` = '$hospital_id'";
      $result3 = mysqli_query($con, $sql3);

      $sql7 = "UPDATE `hospital_info` SET `last_updated` = current_timestamp() WHERE `hospital_info`.`hospital_id` = '$hospital_id'";
      $result7 = mysqli_query($con, $sql7);

      $new_occupied = $occupied_icu_beds+$occupied_emergency_beds+$occupied_general_beds;

      $sql30 = "UPDATE `hospital_info` SET `occupied_bed` = '$new_occupied' WHERE `hospital_info`.`hospital_id` = '$hospital_id'";
      $result30 = mysqli_query($con, $sql30);

  
    }
  }

  if (isset($_POST['submit1'])) {

    $available_emergency_bad = $_POST["uemergency_beds"];
    if ($available_emergency_bad > $Total_emergency_beds) {
    ?>
      <script>
        alert("You can't enter more than Total Emergency_beds Beds")
      </script>
    <?php
    } else {
      $sql4 = "UPDATE `hospital_info` SET `available_emergency_bad` = '$available_emergency_bad' WHERE `hospital_info`.`hospital_id` = '$hospital_id'";
      $result4 = mysqli_query($con, $sql4);

      $occupied_emergency = $Total_emergency_beds-$available_emergency_bad;

      $sql41 = "UPDATE `hospital_info` SET `occupied_emergency_bed` = '$occupied_emergency' WHERE `hospital_info`.`hospital_id` = '$hospital_id'";
      $result41 = mysqli_query($con, $sql41);

      $sql8 = "UPDATE `hospital_info` SET `last_updated` = current_timestamp() WHERE `hospital_info`.`hospital_id` = '$hospital_id'";
      $result8 = mysqli_query($con, $sql8);

      $new_occupied = $occupied_icu_beds+$occupied_emergency+$occupied_general_beds;

      $sql33 = "UPDATE `hospital_info` SET `occupied_bed` = '$new_occupied' WHERE `hospital_info`.`hospital_id` = '$hospital_id'";
      $result33 = mysqli_query($con, $sql33);

      $new_Available = $available_icu_beds+$available_general_bad+$available_emergency_bad;

      $sql77 = "UPDATE `hospital_info` SET `available_bad` = '$new_Available' WHERE `hospital_info`.`hospital_id` = '$hospital_id'";
      $result77 = mysqli_query($con, $sql77);

      header("Refresh:0");
    }
  }

  if (isset($_POST['submit2'])) {
    $available_icu_beds = $_POST["uicu_beds"];
    if ($available_icu_beds > $Total_icu_beds) {
    ?>
      <script>
        alert("You can't enter more than Total Beds")
      </script>
    <?php
    } else {
      $sql5 = "UPDATE `hospital_info` SET `available_icu_beds` = '$available_icu_beds' WHERE `hospital_info`.`hospital_id` = '$hospital_id'";
      $result5 = mysqli_query($con, $sql5);

      $occupied_icu = $Total_icu_beds-$available_icu_beds;

      $sql51 = "UPDATE `hospital_info` SET `occupied_icu_bed` = '$occupied_icu' WHERE `hospital_info`.`hospital_id` = '$hospital_id'";
      $result51 = mysqli_query($con, $sql51);

      $sql9 = "UPDATE `hospital_info` SET `last_updated` = current_timestamp() WHERE `hospital_info`.`hospital_id` = '$hospital_id'";
      $result9 = mysqli_query($con, $sql9);

      $new_occupied = $occupied_icu+$occupied_emergency_beds+$occupied_general_beds;

      $sql43 = "UPDATE `hospital_info` SET `occupied_bed` = '$new_occupied' WHERE `hospital_info`.`hospital_id` = '$hospital_id'";
      $result43 = mysqli_query($con, $sql43);

      $new_Available = $available_icu_beds+$available_general_bad+$available_emergency_bad;

      $sql79 = "UPDATE `hospital_info` SET `available_bad` = '$new_Available' WHERE `hospital_info`.`hospital_id` = '$hospital_id'";
      $result79 = mysqli_query($con, $sql79);

      header("Refresh:0");
    }
  }
  if (isset($_POST['submit3'])) {
    $available_general_bad = $_POST["ugeneral_beds"];
    if ($available_general_bad > $Total_general_beds) {
    ?>
      <script>
        alert("You can't enter more than Total Beds")
      </script>
<?php
    } else {
      $sql6 = "UPDATE `hospital_info` SET `available_general_bad` = '$available_general_bad' WHERE `hospital_info`.`hospital_id` = '$hospital_id'";
      $result6 = mysqli_query($con, $sql6);

      $occupied_general = $Total_general_beds-$available_general_bad;

      $sql54 = "UPDATE `hospital_info` SET `occupied_general_bed` = '$occupied_general' WHERE `hospital_info`.`hospital_id` = '$hospital_id'";
      $result54 = mysqli_query($con, $sql54);

      $sql10 = "UPDATE `hospital_info` SET `last_updated` = current_timestamp() WHERE `hospital_info`.`hospital_id` = '$hospital_id'";
      $result10 = mysqli_query($con, $sql10);

      $new_occupied = $occupied_icu_beds+$occupied_emergency_beds+$occupied_general;

      $sql47 = "UPDATE `hospital_info` SET `occupied_bed` = '$new_occupied' WHERE `hospital_info`.`hospital_id` = '$hospital_id'";
      $result47 = mysqli_query($con, $sql47);

      $new_Available = $available_icu_beds+$available_general_bad+$available_emergency_bad;

      $sql80 = "UPDATE `hospital_info` SET `available_bad` = '$new_Available' WHERE `hospital_info`.`hospital_id` = '$hospital_id'";
      $result80 = mysqli_query($con, $sql80);

      
      header("Refresh:0");
    }
  }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../css/bootstrap.min.css">
  <!-- <link rel="stylesheet" href="./css/welcome1.css"> -->
  <link rel="stylesheet" href="./css/hospital_navbar1.css">
  <script src="../js/bootstrap.bundle.min.js"></script>
  <title>
    Welcome <?php echo ($_SESSION['username']) ?>
  </title>
  <style>
    #info {
      font-size: 20px;
      font-family: times, "Times New Roman";
    }
  </style>
</head>

<body>
  <?php
  include '../partials/hospital_navbar.php'
  ?>
  <div class="bg-dark text-uppercase fw-bold text-light display-7">
    <marquee direction="left">
      <span> You Last Updated Details At <?php echo $last_updated ?>.</span>
    </marquee>
  </div>
  <div class="container mt-5">
    <div class="text-center">
      <p class="h3">Hospital Name : <?php echo $hospital_name ?></p>
    </div>
    <table class="table table-hover text-center">

      <tr class="tableHead bg-dark text-light  h3">
        <th> Hospital Details</th>
      </tr>

      <tr class="fs-4">
        <td>Address : <?php echo $address ?></td>
      </tr>
     
      <tr class="fs-4">
        <td>City : <?php echo $city ?></td>
      </tr>

      <tr class="fs-4">
        <td>State :<?php echo $state ?> </td>
      </tr>

      <tr class="fs-4">
        <td>Pincode : <?php echo $pincode ?></td>
      </tr>

      <tr class="fs-4">
        <td>Phone number : <?php echo $phonenumber ?> </td>
      </tr>

      <tr class="fs-4">
        <td>Email Id : <?php echo $email ?></td>
      </tr>

      <tr class="fs-4">
        <td>Website : <?php echo $website ?></td>
      </tr>

      <tr class="fs-4 bg-dark text-light ">
        <td>Total Beds : <?php echo $beds; ?></td>
      </tr>

      <tr class="fs-4 bg-dark text-light ">
        <td>Occupied Beds : <?php echo $occupied; ?></td>
      </tr>

      <tr class="fs-4 bg-dark text-light ">
        <td>Available Beds : <?php echo $available_bad; ?></td>
      </tr>
      
      </tr>
    </table>

    <table class="table table-striped table-bordered table-hover mt-5 mb-5">
      <tr class="text-center  bg-dark text-light ">
        <th>Beds</th>
        <th>Total Beds</th>
        <th>Occupied Beds</th>
        <th>Available Beds</th>
        <th>Update Available Beds</th>
      </tr>
      <tr class="text-center">
        <td>ICU Beds</td>
        <td> <?php echo $Total_icu_beds; ?></td>
        <td><?php echo $occupied_icu_beds; ?> </td>
        <td><?php echo $available_icu_beds; ?></td>
        <td>
          <form method="POST" accept="welcome.php">
            <input type="text" autocomplete="off" class="ms-5" name="uicu_beds" id="uicu_beds" placeholder="Update ICU Beds">
            <span><button class="btn btn-dark" type="submit" name="submit2" id="submit2">Update</button></span>
          </form>
        </td>
      </tr>

      <tr class="text-center">
        <td>Emergency Beds</td>
        <td><?php echo $Total_emergency_beds; ?> </td>
        <td><?php echo $occupied_emergency_beds; ?> </td>
        <td><?php echo $available_emergency_bad; ?></td>
        <td>
          <form method="POST" accept="welcome.php">
            <input type="text" autocomplete="off" class="ms-5" name="uemergency_beds" id="uemergency_beds" placeholder="Update Emergency Beds">
            <span><button class="btn btn-dark" type="submit" name="submit1" id="submit1">Update</button></span>
          </form>
        </td>
      </tr>

      <tr class="text-center">
        <td>General Beds</td>
        <td><?php echo $Total_general_beds; ?></td>
        <td><?php echo $occupied_general_beds; ?> </td>
        <td><?php echo $available_general_bad; ?></td>
        <td>
          <form method="POST" accept="welcome.php">
            <input type="text" autocomplete="off" class="ms-5" name="ugeneral_beds" id="ugeneral_beds" placeholder="Update Available Beds">
            <span><button class="btn btn-dark" type="submit" name="submit3" id="submit3">Update</button></span>
          </form>
        </td>
      </tr>
    </table>
  </div>
  <?php
  include "../partials/hospital_fotter.php"
  ?>
</body>

</html>