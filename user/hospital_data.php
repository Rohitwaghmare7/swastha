<?php
    include '../Database/db.php';

    $id = $_GET['id'];

    $sql = "SELECT * FROM hospital_info WHERE hospital_name = '$id'";
    $result = mysqli_query($con, $sql);
    $row = mysqli_fetch_array($result);

    $hospital_name = ($row['hospital_name']);
    $hospital_id = ($row['hospital_id']);
    $hospital_city = ($row['city']);
    $hospital_state = ($row['state']);
    $hospital_pincode = ($row['pincode']);
    $hospital_contact = ($row['phonenumber']);
    $hospital_email = ($row['email']);
    $hospital_website = ($row['website']);
    $hospital_Total_beds = ($row['beds']);
    $hospital_Total_available_beds = ($row['available_bad']);
    $hospital_Total_emergency_beds = ($row['Total_emergency_beds']);
    $hospital_Total_available_emergency_beds = ($row['available_emergency_bad']);
    $hospital_Total_icu_beds = ($row['Total_icu_beds']);
    $hospital_Total_available_icu_beds = ($row['available_icu_beds']);
    $hospital_Total_general_beds = ($row['Total_general_beds']);
    $hospital_Total_available_general_beds = ($row['available_general_bad']);
    $hospital_last_Updated = ($row['last_updated']);

    $hospital_Total_occupied_beds = $hospital_Total_beds - $hospital_Total_available_beds;
    $hospital_occupied_Emergency_beds = $hospital_Total_emergency_beds - $hospital_Total_available_emergency_beds;
    $hospital_occupied_icu_beds = $hospital_Total_icu_beds - $hospital_Total_available_icu_beds;
    $hospital_occupied_general_beds = $hospital_Total_general_beds - $hospital_Total_available_general_beds

?>    

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $hospital_name ?></title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/user_hospital_navbar.css">
    <link rel="stylesheet" href="../css/style.css">

    <script src="../js/bootstrap.bundle.min.js"></script>
</head>
<body>
<?php
  include "../partials/user_hospital_navbar.php"
?>
 <div class="mb-3 bg-light text-dark">
    <marquee direction="left">
      <span class="fs-3 border-bottom border-dark border-4">Last Updated :<?php echo $hospital_last_Updated ?></span>
    </marquee>
    </div>
  <div class="container">
    <p class=" display-5 fw-bold text-center bg-dark text-light">Hospital Details</p>
    <div>
      <h1 class="display-5 fw-bold mt-4"><?php echo $hospital_name ?></h1>
    </div>




    <table class="table table-hover">
      <tr class="tableHead bg-dark text-light ">

      </tr>
      <tr class="fs-4">
        <td class="text-danger fw-bold col-3 ">Hospital ID : <?php echo $hospital_id ?></td>
        <td class=" fw-bold">City : <span class="text-primary"><?php echo $hospital_city ?></span></td>
        <td class=" fw-bold">State : <span class="text-primary"><?php echo $hospital_state ?></span></td>
      </tr>
      <tr class="fs-4 ">
        <td class=" fw-bold">Pincode : <span class="text-primary"><?php echo $hospital_pincode ?></span></td>
        <td class=" fw-bold">Helpline Number : <span class="text-primary"><?php echo $hospital_contact ?></span></td>
        <td class=" fw-bold">Email : <span class="text-primary"><?php echo $hospital_email ?></span></td>
      </tr>
      <tr class="fs-4 fw-bold" colspan="1">
        <td>Website : <span class="text-primary"><?php echo $hospital_website ?></span></td>
      </tr>
    </table>



    <span class="display-5 fw-bold  mt-5">Bed Availability Details</span>

    <span>
  <div class="dropdown" style="margin-left:1000px;">
  <button class="btn btn-primary dropdown-toggle p-2 fs-4" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false"> Book Now!</button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
   <?php
      echo"
        <li><a href ='../book/general/book.php?id=" . $row['hospital_name'] . "'>" .'General Beds'."</a></li>
        <li><a href ='../book/emergency/book1.php?id=" . $row['hospital_name'] . "'>" .'Emergency Beds'."</a></li>
        <li><a href ='../book/ICU/book2.php?id=" . $row['hospital_name'] . "'>" .'ICU Beds'."</a></li>
    ";?>
  </ul>
</div>
    </span>



    <table class="table table-hover mt-5">
      <tr class="fs-4 fw-bold">
        <td>Total Beds :<?php echo $hospital_Total_beds ?></td>
      </tr>
      <tr class="fs-4 text-success fw-bold">
        <td>Total Available Beds :<?php echo $hospital_Total_available_beds ?></td>
      </tr>
      <tr class="fs-4  text-danger fw-bold">
        <td>Total Occupied Beds :<?php echo $hospital_Total_occupied_beds ?></td>
      </tr>

    </table>


  </div>
 
<?php
  include "../partials/user_footer.php"
?>
</body>
</html>