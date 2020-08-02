<?php
require 'config.php';
$sql    = "SELECT * FROM statistik ORDER BY date_create DESC";
$query  = $db->query($sql);
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
    
    if (isset($_GET['os'])) {
        // header('Content-Type: application/json');
        echo json_encode($dataOS,JSON_NUMERIC_CHECK);
        exit();
    }
    if (isset($_GET['browser'])) {
        header('Content-Type: application/json');
        echo json_encode($dataBrowser,JSON_NUMERIC_CHECK);
        exit();
    }
}
?>
