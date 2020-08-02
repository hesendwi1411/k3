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
    <div id="canvas-holder">
        <canvas id="chart-area-os" width="150" height="150"/>
    </div>    
    <div id="canvas-holder">
        <canvas id="chart-area-browser" width="150" height="150"/>
    </div>


    <script>
    jQuery(document).ready(function() {
        /** Get Statistik browser */
        jQuery.getJSON('json.php?browser=true',function(result){
            var browser      = jQuery("#chart-area-browser").get(0).getContext("2d");
            var myNewChart = new Chart(browser);
            new Chart(browser).Doughnut(result);
       
        });
        /** Get Statistik OS */
        jQuery.getJSON('json.php?os=true',function(result){
            var os      = jQuery("#chart-area-os").get(0).getContext("2d");
            var myNewChart = new Chart(os);
            new Chart(os).Doughnut(result);
       
        });
        
    });
    </script>
</body>
</html>
