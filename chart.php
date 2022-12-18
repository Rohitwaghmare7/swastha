<?php
  include './Database/db.php';
  $id = $_GET['id'];
?>
<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() { 

        var data = google.visualization.arrayToDataTable([
          ['beds', 'available_bad'],
         <?php
         $sql = "SELECT * FROM hospital_info   WHERE hospital_id = $id";
         $fire = mysqli_query($con,$sql);
          while ($result = mysqli_fetch_assoc($fire)) {
            echo"['".$result['beds']."','".$result['available_bad']."']";
          }
         ?>
        ]);

        var options = {
          title: 'Bed Availability Details'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <div id="piechart" style="width: 1000px; height: 600px;"></div>
  </body>
</html>