<?php
include('../include/header_employee.php');
date_default_timezone_set("Asia/Manila");
$dates = date('Y-m-d');
?>

<html>

<head>
    <link href="../vendor/font-awesome/css/fontawesome.css" rel="stylesheet">
    <link href="../vendor/font-awesome/css/brands.css" rel="stylesheet">
    <link href="../vendor/font-awesome/css/solid.css" rel="stylesheet">
</head>
<style>
.panel>.panel-gray> {
    background-color: #ababab;
    border-color: #ababab;
    color: #fff;
}

.panel-heading {
    background-color: #ababab;
    border-color: #ababab;
    color: #fff;
}

.panel-gray {
    border-color: #ababab;
}

#page-wrapper a,
#page-wrapper a:hover,
#page-wrapper a:focus,
#page-wrapper a:active {
    text-decoration: none;
    color: inherit;
}

.zoom:hover {
    transform: scale(1.05);
    transition: transform .5s;
}
</style>

<body>
    <div id="wrapper">
        <div id="page-wrapper">

            <div class="row">
                <div class="col-lg-12">
                    <!-- Dashboard <br>  -->
                    <h2 class="page-header">Welcome <font color="blue"><?php echo $username;?></font>!
                    </h2>
                </div>
            </div>

            <div class="clearfix visible-xs"></div>

            <div class="zoom">
                <div class="col-lg-4 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading"><a href="task_details.php?status=not_yet_started">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fas fa-clock fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">
                                            <?php
                                    $result = mysqli_query($con,"SELECT COUNT(id) as total_nys FROM tasks_details WHERE status='NOT YET STARTED' AND in_charge='$username'");
                                    $row = $result->fetch_assoc();
                                    echo $row['total_nys']; ?>
                                        </div>
                                        <div>Not Yet Started Tasks</div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="panel-footer">
                    <a href="task_details.php?status=not_yet_started"><span class="pull-left">View Details</span></a>
                    <span class="pull-right"><a href="task_details.php?status=not_yet_started"><i class="fa fa-arrow-circle-right"></a></i></span>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </div>

    <div class="zoom">
        <div class="col-lg-4 col-md-6">
            <div class="panel panel-yellow">
                <div class="panel-heading"><a href="task_details.php?status=in_progress">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-tasks fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge">
                                    <?php
                                    $result = mysqli_query($con,"SELECT COUNT(id) as total_ongoing FROM tasks_details WHERE status='IN PROGRESS' AND in_charge='$username'");
                                    $row = $result->fetch_assoc();
                                    echo $row['total_ongoing']; ?>
                                </div>
                                <div>Ongoing Tasks</div>
                    </a>
                </div>
            </div>
        </div>
        <div class="panel-footer">
            <a href="task_details.php?status=in_progress"><span class="pull-left">View Details</span></a>
            <span class="pull-right"><a href="task_details.php?status=in_progress"><i class="fa fa-arrow-circle-right"></a></i></span>
            <div class="clearfix"></div>
        </div>
    </div>
    </div>
    </div>

    <div class="zoom">
        <div class="col-lg-4 col-md-6">
            <div class="panel panel-green">
                <div class="panel-heading"><a href="task_details.php?status=finished">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fas fa-list fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge">
                                    <?php
                                    $result = mysqli_query($con,"SELECT COUNT(id) as total_finished FROM tasks_details WHERE status='FINISHED' AND in_charge='$username'");
                                    $row = $result->fetch_assoc();
                                    echo $row['total_finished']; ?>
                                </div>
                                <div>Finished Tasks</div>
                    </a>
                </div>
            </div>
        </div>
        <div class="panel-footer">
            <a href="task_details.php?status=finished"><span class="pull-left">View Details</span></a>
            <span class="pull-right"><a href="task_details.php?status=finished"><i class="fa fa-arrow-circle-right"></a></i></span>
            <div class="clearfix"></div>
        </div>
    </div>
    </div>
    </div>

    </div>
    </div>
    </div>
</body>
</html>