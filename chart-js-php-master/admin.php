<?php
require 'config.php';
$sql = "SELECT * FROM statistik ORDER BY date_create DESC";
$query = $db->query($sql);
?>
<html>
<head>
    <title>Admin dengan Json</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> 
    <script src="assets/Chart.min.js"></script>
    <script src="assets/src/Chart.Doughnut.js"></script>
    <style>
            body{
                padding: 0;
                margin: 0;
            }
            #canvas-holder{
                float: left;
                margin-right: 20px;
                width:30%;
            }
        </style> 
</head>
<body>
<table border="1">
    <tr>
        <td>IP</td>
        <td>Browser</td>
        <td>OS</td>
        <td>Date</td>
    </tr>
    <?php
    while ($row=$query->fetch_assoc()) { ?>
        <tr>
            <td><?php echo $row['ip'];?></td>
            <td><?php echo $row['browser'];?></td>
            <td><?php echo $row['os'];?></td>
            <td><?php echo $row['date_create'];?></td>
        </tr>
    <?php } ?>
</table>
<hr>
    <div id="canvas-holder">
        <canvas id="chart-area-os" width="150" height="150"/>
    </div>    
    <div id="canvas-holder">
        <canvas id="chart-area-browser" width="150" height="150"/>
    </div>
    

    <?php
    /** @var Sesi untuk membuat Chart */
    $sql = "SELECT * FROM statistik ORDER BY date_create DESC";
    $query = $db->query($sql);
    if ($query->num_rows > 0) {
        while ($row=$query->fetch_assoc()) {
               $os[]      = $row['os'];
               $browser[] = $row['browser'];
        }
        $os      = array_count_values($os);
        $browser = array_count_values($browser);
        foreach ($os as $key => $value) {
            $dataOS[] = array('value'=>$value,'label'=>$key);
        }
        foreach ($browser as $key => $value) {
            $dataBrowser[] = array('value'=>$value,'label'=>$key);
        }
        
    }?>
    <script>
        var doughnutDataOs      = <?php echo json_encode($dataOS,JSON_NUMERIC_CHECK);?>;
        var doughnutDataBrowser = <?php echo json_encode($dataBrowser,JSON_NUMERIC_CHECK);?>;
            window.onload = function(){
                var os = document.getElementById("chart-area-os").getContext("2d");
                window.myDoughnut = new Chart(os).Doughnut(doughnutDataOs);
                var browser = document.getElementById("chart-area-browser").getContext("2d");
                window.myDoughnut = new Chart(browser).Doughnut(doughnutDataBrowser);
            };
    </script>

</body>
</html>
