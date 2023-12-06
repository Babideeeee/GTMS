<?php
$today = date('Y-m-d');
header("Content-Type:   application/vnd.ms-excel; charset=utf-8");
header("Content-Disposition: attachment; filename=ACCOUNTS-SUMMARY_".$today.".xls");  //File name extension was wrong
header("Expires: 0");
header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
header("Cache-Control: private",false);

include('../include/auth.php');
include('../include/connect.php');
?>

<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body>
    <center>
        <b>
            <font color="blue">GLORY (PHILIPPINES), INC.</font>
        </b>
        <br>
        <b>TASK MANAGEMENT SYSTEM</b>
        <br>
       <h3> <b>REGISTERED ACCOUNTS SUMMARY</b></h3>
        <br>
    </center>
    <br>

    <div id="table-scroll">
        <table width="100%" border="1" align="left">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Username</th>
                    <th>E-mail</th>
                    <th>Section</th>
                    <th>Access</th>
                    <th>Status</th>
                </tr>
            </thead>

            <tbody>
                <?php
            

            $con->next_result();
            $result = mysqli_query($con,"SELECT accounts.fname, accounts.lname, accounts.username, accounts.email, section.sec_name, access.access, accounts.status, accounts.id FROM accounts LEFT JOIN section ON accounts.sec_id=section.sec_id LEFT JOIN access on accounts.access=access.id");
          
            while($row = mysqli_fetch_array($result))
            {
                if($row['status']==1) {
                    $status = "ACTIVE";
                }
                else {
                    $status = "INACTIVE";
                }
                echo "
                <tr>
                <td> " . $row["fname"] . " ". $row["lname"] . "</td> 
                <td>" . $row["username"] . "</td> 
                <td>" . $row["email"] . "</td> 
                <td>" . $row["sec_name"] . "</td>
                <td>" . strtoupper($row["access"]) . "</td>
                <td>". $status ."</td>
                </tr> ";
            } 
            ?>
            </tbody>

        </table>
    </div>
</body>

</html>